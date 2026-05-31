---
layout: post
title: "World Model I"
subtitle: "A basic world model plus MPC for control in JAX."
math: true
draft: true
---

So, what actually is a world model? There are lots of competing definitions, especially as the term gets more and more hyped up. I'm going to take a Reinforcement Learning view - that means we're dealing with states $s$ and actions $a$. In that universe, a world model is fundamentally defined by this equation:

$$
f_\theta(s, a) = s'.
$$

In this blog, we'll train a simple model $f_\theta$ and use MPC to transmute it into a decent policy. We can do something cool here; by training a world model only on random data, we'll be able to derive a working policy without our data collection ever being designed for a particular task. In some sense, that's what we do as humans. We think about what we want to get done, use our world knowledge, and squish them together to come up with a novel solution. We do that without needing to know the problem in advance, unlike typical RL solutions where the reward function is usually a core part of training.

# Collecting Data 
I covered fast data collection using the GPU-friendly MJX in my last blogpost, so I won't go into the details here.

# Training a Model
I'm going to define a very simple neural network, with a couple of layers and not too many parameters. It's probably overkill for Cartpole, but then most things are. I'm using the `nnx` library for my neural net here. It's built nicely to compose with the JAX transforms that we're using to speed up the simulation.

```python
# define a simple network
class LayerBlock(nnx.Module):
    "Single linear layers using batchnorm for stable training."
    def __init__(
        self,
        in_features: int,
        out_features: int,
        activation_fn: Callable,
        rngs: nnx.Rngs,
        bn: bool = True,
    ):
        self.layers = nnx.List(
            [
                nnx.Linear(in_features, out_features, rngs=rngs),
                nnx.BatchNorm(out_features, rngs=rngs) if bn else nnx.identity,
                activation_fn,
            ]
        )

    def __call__(
        self, x: Shaped[Array, "*Batch InFeatures"]
    ) -> Shaped[Array, "*Batch OutFeatures"]:
        for layer in self.layers:
            x = layer(x)
        return x


class OneStepWorldModel(nnx.Module):
    def __init__(self, rngs: nnx.Rngs):
        self.layers = nnx.List(
            [
                LayerBlock(6, 32, activation_fn=nnx.swish, rngs=rngs, bn=True),
                LayerBlock(32, 64, activation_fn=nnx.swish, rngs=rngs, bn=True),
                LayerBlock(64, 32, activation_fn=nnx.swish, rngs=rngs, bn=True),
                # Skip batchnorm and an activation function for the output layer
                LayerBlock(32, 5, activation_fn=nnx.identity, rngs=rngs, bn=False),
            ]
        )

    def __call__(
        self,
        obs: Shaped[Array, "... StateDim"],
        action: Shaped[Array, "... ActionDim"],
    ) -> Shaped[Array, "... StateDim"]:
        # Stack the state and action into one array
        x = jnp.concatenate([obs, action], axis=-1)
        for layer in self.layers:
            x = layer(x)

        obs = x + obs  # predict the delta
        # normalise the sin and cos components (axes 1,2) to the unit circle
        sincos_norm = jnp.linalg.norm(obs[..., 1:3], axis=-1)
        obs = obs.at[..., 1].set(obs[..., 1] / sincos_norm)
        obs = obs.at[..., 2].set(obs[..., 2] / sincos_norm)
        return obs
```


# Training the Model

```python
model = OneStepWorldModel(nnx.Rngs(0))
batch = sample_batch(buffers, jax.random.key(0))
key = jax.random.key(0)

n_train_steps = 2000
# Use a simple learning rate schedule, which halves halfway
lr_schedule = optax.piecewise_constant_schedule(3e-4, {1000: 0.5})
tx = optax.adamw(lr_schedule)
optimizer = nnx.Optimizer(model, tx, wrt=nnx.Param)

# value_and_grad returns the backprop gradients from our loss function
@nnx.value_and_grad
def loss_fn(model, batch):
    pred = model(batch["obs"], batch["action"])
    squared_distances = jnp.linalg.norm(batch["next_obs"] - pred, axis=-1)
    return squared_distances.mean()


@nnx.jit
def train_step(model, optimizer, key):
    batch = sample_batch(buffers, key)
    loss, grads = loss_fn(model, batch)
    # This is where the model weights actually get updated.
    optimizer.update(model, grads)
    return loss

# Keeping this loop outside of jit to prevent it being
# unrolled - would make for very slow jit compilation.
for _ in range(n_train_steps):
    step_key, key = jax.random.split(key)
    loss = train_step(model, optimizer, key)
```

And we get a nice looking loss curve!

<figure class="illustration">
  <img src="/assets/images/one-step-trainloss.png" width="640" height="480" alt="Train Loss Curve">
  <figcaption>Loss go down :)</figcaption>
</figure>

# Using MPC to Derive a Policy

We've learned a model, but now we want to actually use it to _do_ something. For that, we'll turn to model-predictive control, or MPC. I've written a more in-depth blogpost on MPC, but this case we'll follow a pretty simple procedure:

1. Generate possible action sequences.
2. Use our world model to figure out what states would arise if we took those actions.
3. Use a reward function to score each trajectory.
4. Choose the action which leads to the best trajectory.
5. Repeat for each timestep.

## World Model: Rollout…
Our model estimates the next state given a state-action pair

$$
\tilde{s}_{t+1} = f_\theta(s_t, a_t).
$$

Well, we can stick that back into our world model…

$$
\tilde{s}_{t+2} = f_\theta(\tilde{s}_{t+1}, a_{t+1})
$$

…and so on, _unrolling_ our model to predict a full trajectory of states. In code, that looks like this (using `nnx.scan` instead of a Python for loop).

```python
@jax.jit
def rollout(
    model_graphdef: nnx.GraphDef,
    model_state: nnx.GraphState,
    initial_obs: Shaped[Array, "... StateDim"],
    actions: Shaped[Array, "... Time ActionDim"],
) -> Shaped[Array, "... Time StateDim"]:
    # This assert will freak out if one our input arrays is the wrong shape
    chex.assert_equal_shape_prefix([initial_obs, actions], actions.ndim - 2)

    # Use of nnx.merge means we can use the functional API and rely on
    # normal jax jit, which are slightly faster.
    model = nnx.merge(model_graphdef, model_state)

    # Usually faster to unroll along time on the first dimension, and
    # lax.scan requires it, so I've formed the habit.
    actions = rearrange(actions, "... T A -> T ... A")

    # Let's propagate batch stats across time steps
    state_axes = nnx.StateAxes({nnx.BatchStat: nnx.Carry, ...: None})

    # Use scan to unroll along the time dimension.
    @nnx.scan(in_axes=(state_axes, nnx.Carry, 0))
    def unroll(model, obs, action):
        next_state = model(obs, action)
        return next_state, next_state

    _, state_trajectory = unroll(model, initial_obs, actions)

    # Put the batch dimension on the first axis - no real need but
    # it just feels weird not to.
    return rearrange(state_trajectory, "T ... A -> ... T A")
```

## Generating Actions

Note that, to give our model something to unroll over, we also need to give it some actions. Cartpole is simple, so we don't need to get too fancy. For this, I'll generate random action sequences, and we'll then use the world model to evaluate them. This technique is called _random shooting_, and it's the simplest possible version of action sampling. Smarter alternatives like _CEM_ or _MPPI_ do more optimisation on their action sequences, but that's overkill for this. 

```python
def gaussian_action_samples(
    key: jax.Array,
    batch_size: int = 64,
    horizon: int = 5,
    n_samples: int = 128,
    std: float = 0.2,
    mean: float = 0.0,
):
    shape = (batch_size, n_samples, horizon, 1)  # 1 for action dim
    samples = mean + std * jax.random.normal(key, shape=shape)
    # cumulative sum over the horizon to accumulate a random walk
    samples = jnp.cumsum(samples, axis=-1)
    return jnp.clip(samples, -1, 1) # Cartpole actions are bounded between [-1, 1]
```

We'll also want to define a simple reward function so our policy knows what's good and what's bad. For Cartpole, a simple reward function just rewards you for keeping the pole vertical. We'll call the angle of the pole away from vertical $\phi$, giving us a simple reward function

$$
r(s) = \frac{1 + \cos(s_\phi)}{2}, \quad r \in [0, 1].
$$

In code…

```python
def upright_reward_fn(
    obs: Shaped[Array, "... Time StateDim"],
) -> Shaped[Array, "... 1"]:
    pole_angle_cos = obs[..., 1]
    upright = (pole_angle_cos + 1) / 2
    return upright.mean(axis=-1)  # average over time steps
```

## Deriving Our Policy

Now we have all the pieces for our policy. We just need to generate a random set of actions $a=(a_1, \dots, a_H)$, score the resultant states $(s_1, \dots, s_H)$, and then pick the best action:

$$
(a_1, \dots, a_H)^* = \operatorname*{argmax}_{(a_1, \dots, a_H)} \sum_{\tau=t}^{t+H} r( f_\theta(\tilde{s})\tau, a_\tau ) )
$$

And then we simply select next action $a_1^*$. If code is your bag, that looks like this.

```python
@jax.jit
def simulate_policy(key, model, reward_fn: Callable = upright_reward_fn):
    horizon = 5
    n_samples = 1024
    n_steps = 1000

    # merge the nnx model
    graphdef, model_state = nnx.split(model)
    model.eval() # don't need to track batchnorm stats anymore

    # Get initial state
    state = env.reset(key)

    def policy_step(state, xs=None):
        initial_obs = state.obs
        initial_obs = repeat(initial_obs, "... S -> ... N S", N=n_samples)

        # sample a Gaussian trajectory
        actions = gaussian_action_samples(
            key, batch_size=1, n_samples=n_samples, horizon=horizon
        )[0]  # remove batch dim

        state_trajectory = rollout(graphdef, model_state, initial_obs, actions)

        # score trajectory based on highest average reward
        rewards = reward_fn(state_trajectory)
        best_ix = rewards.argmax()
        best_actions = actions[best_ix]
        next_action = best_actions[0]
        state = env.step(state, next_action)
        return state, {"state": state, "action": next_action}

    _, states = jax.lax.scan(policy_step, state, length=n_steps)
    return states
```

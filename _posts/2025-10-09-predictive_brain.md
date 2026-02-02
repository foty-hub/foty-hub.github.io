---
layout: post
title: "The Predictive Brain"
subtitle: "The link between world models and the brain"
math: true
draft: true
---

I've recently finished reading two great books: [*The Experience Machine*](https://uk.bookshop.org/p/books/the-experience-machine-how-our-minds-predict-and-shape-reality-andy-clark/7007773) by Andy Clark and [*Active Inference*](https://uk.bookshop.org/p/books/active-inference-the-free-energy-principle-in-mind-brain-and-behavior-giovanni-pezzulo/f1ce44ee99e81fee?ean=9780262553995&next=t) by Parr, Pezzulo and Friston. Both books discuss what I'll call predictive coding—a new approach to thinking about how our brains work brain works which has signficant ramifications for anyone working on machine learning.

## Predictive Coding

Traditionally, neuroscience (and ML) has operated on a relatively simple computational model: we perceive the environment around us; process and reason about what we sense; and then execute an action to achieve whatever goal we're aiming for. Then that repeats, forever.

Predictive coding proposes a different idea. Rather than operating purely on our perception of the outside world, it says we act according to our brain's prediction of what the environment should be. In this model, the brain is constantly previewing the future. In fact, predictive coding suggests that this prediction underpins how we act - we take actions to minimise the difference between our brain's prediction and the world we perceive.

A clear example of this comes from Andy Clark's *The Experience Machine*. Suppose you're sitting at your desk working when you hear a seagull squawk outside your window. The following events happen: 
1. The brain begins to predict some abstract representation of a seagull, but it jars with what we currently see (a computer screen) 
2. Our action system kicks into gear to minimise the discrepancy between our current state (staring at a screen) and the predicted state (looking at a lovely seagull). 
3. We turn our head, searching with our eyes to spot the bird until we spot it and the discrepancy is resolved.

In *Active Inference*, we get a more mathematical theoretical treatment of the problem. The authors dive into Karl Friston's Free Energy Principle, which states we can blah blah blah. Friston's idea gives us two routes to minimising the difference between our prediction and reality. We can either *act* to change reality, or we can *learn* to update our prediction. 

$$y=mx+c$$

## Is there really no 

Personally, I find the idea appealing for short-term motion, like grabbing a can or walking across a room. That said, I'm a little less sure how this translates to longer-term planning. In his book, Andy Clark imagines a scenario where the brain predicts a future where you envision yourself as an adept surfer, in order to motivate actions which will lead to that outcome. To me that feels a little undercooked - is our brain constantly predicting multiple goals (learn to surf, find a partner, buy a house etc...) in parallel across multiple levels of abstraction constantly? As Yann LeCun said in a recent talk, this idea (of hierarchical world models) is still an open problem.

Compared to humans, machine learning (and especially RL) models are extremely sample inefficient: a teenager takes 15 hours of driving lessons, where a Waymo uses millions of hours of data from numerous cameras and LIDAR sensors the teen doesn't need. But we've seen that world models have the potential to drastically improve sample efficiency. One example is PILCO, which learns to balance a pendulum vertically in only 30s of real-world interaction. A typical RL method, like a DQN, needs around 17 minutes (assuming 50k steps at 0.02s each). That's also a big deal for robots, where we're heavily bottlenecked by the availability of data.

## So what

I'm not sure these ideas are exactly outlining a blueprint for world models, but I do think they indicate a worthwhile direction of travel. Qualitatively, we know that humans have some kind of abstract world model - if I throw a bottle against a wall you can predict the outcome. And

sidenote on implementation vs principle - FQI vs DQN, and the Welch Labs video on diffusion. Even if you have the right idea, there's no guarantee you're doing it the right way.

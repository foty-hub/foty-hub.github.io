---
layout: post
title: "The Predictive Brain"
subtitle: "How breakthroughs in neuroscience is informing RL"
math: true
---

The link between world models and predictive coding

I've recently finished reading two great books: [*The Experience Machine*](https://uk.bookshop.org/p/books/the-experience-machine-how-our-minds-predict-and-shape-reality-andy-clark/7007773) by Andy Clark and [*Active Inference*](https://uk.bookshop.org/p/books/active-inference-the-free-energy-principle-in-mind-brain-and-behavior-giovanni-pezzulo/f1ce44ee99e81fee?ean=9780262553995&next=t) by Parr, Pezzulo and Friston. Both books fundamentally discuss how the brain works in a way that might cause ML practitioners to rethink their methods. 

Traditionally, neuroscience (and ML) has operated on a relatively simple computational model: we perceive the environment around us; process and reason about what we sense; and then execute an action to achieve whatever goal we're aiming for. And then that repeats, forever.

Predictive coding proposes a different idea. Rather than operating purely on our perception of the outside world, it says, we instead predominantly act according to our brains predictions of what the environment should be. In this model, the brain is constantly previewing the future. In fact, predictive coding suggests that this prediction is the foundation to how we act - we take actions to minimise the difference between our brain's prediction and the world we perceive.

Andy Clark outlines a good example in the Experience Machine. Suppose you're sitting at your desk working when you hear a seagull bark outside your window. In this case, the brain begins to predict some abstract representation of a seagull - so our action system kicks into gear, seeking to minimise the discrepancy between our current state (staring at a screen) and the predicted state (looking at a lovely seagull). We turn our head, searching with our eyes to spot the bird until we finally spot it and the discrepancy is resolved.

In *Active Inference*, we get a more robust theoretical treatment of the problem. The authors dive into Karl Friston's Free Energy Principle, which states we can blah blah blah. Friston's idea gives us two routes to minimising the difference between our prediction and reality. We can either *act* to change reality, or we can *learn* to update our prediction. 

$$y=mx+c$$

I find this idea really appealing - I think a total disaster in ML which many people skate over is the extreme sample inefficiency of learning methods: a teenager can take 15 hours of driving lessons and drive reliably for the rest of their life, where learning methods require millions of hours of footage with 360 camera coverage and additional sensors. One of the best approaches we have 

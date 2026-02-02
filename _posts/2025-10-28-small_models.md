---
layout: post
title: "The Small Model Fallacy"
subtitle: "Why don't we just train small models like AlphaFold?"
draft: true
---

Gary Marcus recently wrote an op-ed [in the New York Times](https://www.nytimes.com/2025/10/16/opinion/ai-specialized-potential.html?unlocked_article_code=1.vE8.YxVe.eTXf6Ny5--gn&smid=url-share) complaining about the current obsession with LLMs:

>  *the tech industry should stop focusing so heavily on these one-size-fits-all tools and instead concentrate on narrow, specialized A.I. tools engineered for particular problems.*

This has become an increasingly common refrain. In [an interview with Hard Fork](https://www.youtube.com/watch?v=042N0H_pjj0), *Empire of AI* author Karen Hao also advocated the use of "task-specific" AI over large models. The problem is that this small-model approach (which I'm not necessarily opposed to) relies on glossing over a lot of messy detail.

## Specifically-Tasked
In his article, Marcus makes the case that chessbots are much better at chess than ChatGPT. You might infer from that example that task-specific AIs are always better than LLMs and more general models, right? Wrong. A chessbot beats an LLM at chess. But an LLM 

Chessbot TKTTKKT. 

And that's not to say that, if anything, training a chessbot is deeply inefficient. If you want it to learn to play checkers, it has to be retrained from scratch. 

## Who decides the tasks
One of the most interesting aspects of LLMs is that they have completely blown open the 

## The Bitter Lesson
People love to talk about AlphaFold and DeepMind's older work like they were examples of low-scale efficiency. But it totally ignores that, in fact, DeepMind's first major breakthrough was massively *scaling* Reinforcement Learning

## The Scientific Reality
Another kind of undercurrent to these arguments is that LLMs are woefully inefficient and we should just *do things differently.* But here's the thing: no one knows how to. Until OpenAI scaled up GPT-2 and GPT-3, no one had any idea what these models would be capable of achieving. Until labs started introducing RL from Verifiable Rewards (otherwise known as reasoning models or GRPO training), no one had any idea that LLMs could be trained effectively to solve difficult maths problems. These labs are not trying to solve a known problem, they are discovering new technologies and innovating new things. First comes the discovery, then refinement can happen later - but we're still firmly in the innovation and discovery phase. It's as if we asked scientists who discovered a novel drug to make it differently, without acknowledging that they're out at the precipice of human understanding.

## The Best Way to Get Small Models
Currently, the most effective way to train small language models is as follows:

1. Train a big model.
2. Distil the big model into a small one.


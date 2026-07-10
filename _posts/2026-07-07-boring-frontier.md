---
layout: post
title: "The Boring Frontier of Robotics"
subtitle: "Why backflips are easier than folding laundry."
math: true
draft: true
---
<!-- TODO: GENERATE ATM WORKER PLOT -->
<!-- TODO: EMBED YOUTUBE VIDEO -->
<!-- TODO: STICK A PIC IN OF ME AT THE EXHIBITION :) -->
<!-- TODO: COPY CHECK/EDIT -->

*I recently had the pleasure of spending a week at the Royal Society's Summer Science Exhibition, helping out at my lab's robotics exhibit. Over the course of the week I delivered a spiel about our work countless times to members of the public. I thought I'd note it down for posterity.*

# The Spiel

Have you seen those internet videos of robots backflipping, or running marathons? What's surprising to a lot of people is that those kinds of task are actually easier than basic things we do daily without thinking about it --- things like making a cup of tea. Think about it; how come AI beat Garry Kasparov at chess 40 years ago, yet no one sells a laundry-folding robot? It's because many things we find hard (like chess) are easy for machines, and things we find easy (interacting with the real world) are unintuitively hard for robots.

> TKTK - videos of backflip or the marathon fail

The reason we find it easy to do complex things in the real world is that our brains are incredibly well-evolved for the job. Consider what happens when you go to pick something up. Before you move a muscle, your brain has figured out:
- Where the object is in 3D space, relative to you,
- What size it is,
- What shape it is (including the bits you can't see - we regularly place our fingers on the backs of things we pick up),
- How heavy it's likely to be (and hence how hard we should grip),
- How grippy the surface is,
- How we should hold it for the next thing we want to do (am I picking a knife up to cut chives or stab someone?),
- How our muscles should move together to get the hand to its destination,
- How our stance should change to enable us to pick the object up (you might widen your feet, or lean, when grasping something heavy),
- How the object might move once we grasp it (e.g. is it solid, or does it contain a liquid which will slosh around?).

We do all of this effortlessly, day in and day out. And that's just picking something up. Robots get none of that real world understanding for free, and figuring it out is hard. *That's* why LaundryBot isn't on supermarket shelves yet.

Our exhibit focussed mostly on manual assembly tasks --- a simple task called [RAMP](https://arxiv.org/abs/2305.09644) which would take a 6 year old half a minute. Part of the point we were making was reliability. We were at the Royal Society for a week straight, running the demo on repeat. Robotics researchers often hit a success rate of 90% and call it job done. But when you're demonstrating to sceptical teenagers, a one-in-ten failure rate is catastrophic. Modern robotics (and [AI agents](https://arxiv.org/abs/2602.16666), for that matter) often falls far short of the reliability needs we'd want for real autonomous work in the messiness of the real world. That's another reason LaundryBot isn't here yet.

In short --- robots probably aren't coming for your job, or coming to kill you or anything that dramatic. They might be able to backflip on TikTok, but they still can't make you a cup of tea. That's what we're working on.


# FAQ

*Another fun aspect of chatting to so many people over the course of the exhibition was being asked questions. Many questions. Here are some that came up repeatedly, and the responses I settled on.*

## *Haven't robots been doing assembly in factories for decades?*
They have! The reason is that we can control everything in a factory. If I'm a hole-punching robot in a factory, I don't need to know anything about the world. I get given a chunk of steel, and I move from position *a* to position *b* every time. Forever. If my chunk comes in the wrong orientation, I can't really adapt on the fly. So in factories, we get the benefit of robot control without the need for intelligent decision making. Outside of factories, we're not so lucky --- our metaphorical chunks of steel rarely come the same way twice.


## *What about surgical robots?*
Surgical robots appear different to factory robots, but they actually reinforce the general point. Surgical robots provide excellent fine motor control, but they still delegate real-world understanding and decision-making to a human operator. The robot doesn't need to know where to make a cut, or which organ it's dealing with: it relies on the surgeon to fill in for its lack of understanding.


## *What about ChatGPT? This must nearly be solved?*
ChatGPT is really impressive. What's exciting for AI researchers is that it [wasn't trained for specific jobs](small-models), like writing poetry or knowing the capitals of countries. Instead, it learns all that stuff from a simple task --- next-token prediction of internet data. ChatGPT suggests a path to training robots that can *generalise* to new situations.

So why don't we just train ChatGPT for robots? **Data**. Us humans have spent decades writing things on the Internet, but most of us didn't spend the same amount of time uploading quality robotics data, so there's nowhere near enough data for a RoboGPT.

To bridge the data gap, we reckon we need new ways of learning. ChatGPT *is* impressive, but modern AI is an embarrassingly slow student. Think about self-driving cars. A teenager takes 20 hours to pass their test, armed with only their wits and their eyes. But a self-driving car, equipped with a 360-degree array of cameras and depth sensors and hi-resolution maps requires a million hours of training data. Self-driving cars are pretty good ([and safe](https://waymo.com/safety/impact/)), but it's clear that they learn slowly. That works for a single high-value use case like driving, but if we want robots to adapt and learn as effectively as we do, it seems like we need new breakthroughs.

*Addendum*: some people are trying a ChatGPT-style approach with the class of AI model called VLAs (vision-language-action models). These take large language models which handle text or image inputs and plug them into a model that learns to control robots. The idea is that VLAs can use the real-world understanding LLMs get from the internet to kickstart real-world understanding. A good example is [Physical Intelligence](https://www.pi.website/blog/pi0), a startup training a series of VLAs named $\pi$.

## *How come we learn so much better than robots?*
That's really the big question --- and no one knows the full answer. I do think there are a couple of interesting hints though.

One of them, which is increasingly hyped in AI circles, is the idea of a world model. If you watch me drop a glass onto a concrete floor, you can foresee the outcome. We learn to predict what happens in the real world. For learning, that's a really rich signal --- you can always predict how the world will react to your actions. In contrast, only learning when you finish a task (which is how traditional Reinforcement Learning works) is a very sparse source of information. So world models might help us learn more effectively from limited experience.

Beyond world models, a deeper idea rooted in neuroscience is 'predictive processing', which proposes that our perception of the world is just our brain's prediction of what it *ought to perceive*. That's interesting for many reasons, not just robotics; check out [The Experience Machine](https://uk.bookshop.org/p/books/the-experience-machine-how-our-minds-predict-and-shape-reality-andy-clark/e07a087f415446a4) by Andy Clark for a very digestible introduction!

Another angle I think is interesting is how we learn when we're young. After all, A 5-year old could solve many of the problems that robots struggle with. Check out the video below of a baby messing around with toys on a mat. It plays with something, gets the measure of it, then gets bored and figures something else out. That mixture of intrinsic curiosity and realising when you've learned enough (i.e. getting bored) makes us really efficient at learning about the world, especially when we're young. There's research into intrinsic curiosity, but I don't think it's a solved problem at all. Perhaps once we invent an AI that enjoys playing, we'll get closer to robots that understand the world.

<figure class="video">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/8vNxjwt2AqY" title="A baby exploring toys" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
  <figcaption>A baby roams around, getting the measure of a particular toy before it gets bored and moves on to the next.</figcaption>
</figure>


## *What degree should I do to study robotics?*
This is a question I got constantly from young students, and it's one that I'm not really qualified to answer, having bounced around from physics to data science to machine learning. The one thing I would say is that robotics is multidisciplinary. Roboticists come from academic backgrounds spanning 'pure' degrees like maths and statistics through to physics, computer science, electrical engineering, mechatronics, and industrial design. If I were giving advice, I'd say the most important thing is figuring out a STEM degree which you can get stuck into. You can figure out how robots fit in down the line.


## *What are the downstream applications of our research? Are these intended to be products?*
I think the kind of research many universities do does have an eye on downstream applications, but it's a bit of a halfway house. In my view, the right role for academia is working on these ideas well before they're ready to be turned into products, figuring out the fundamental issues. At the same time, some problems are worth working on because they force you to solve deeper problems. Manual assembly like RAMP requires real-world, contact-rich interaction combined with long-horizon planning --- two substantial challenges for modern robots. 


## *What about jobs? Aren't robots going to take them all?*
It's a good question, and it's one that roboticists shouldn't be tackling alone. In general, we try to think about automating work which is dangerous, dull or dirty --- the kinds of jobs that we might not mind fewer people working in. But technology has affected work in meaningful ways in the past. You can look at the story of the Luddites (*Blood in the Machine* is a great book on this), and their concerns really were valid. These were people facing massive falls in their quality of life and the possible destitution of their families. As a society, we've got to figure out what we automate, and how we look after the people impacted by technology --- robotics or otherwise.

What's also true is that it's hard to forecast how technology affects work. One example that people cite often is the introduction of ATMs in the 60s, which automated one of the main tasks of bank tellers, doling out cash. You might think that would cause a drop in bank teller headcount, but the opposite happened. The job changed, becoming more relational and less about handling money. And because ATMs reduced the risk of tellers mishandling cash, banks expanded the number of branches they offered, leading to more bank tellers (until mobile banking killed off in-person branches). In the ATM case, robotics automated a single task, not the whole job, and the job changed to accommodate it. That doesn't mean that robotics won't disrupt people's lives, but it does tell us that it can be hard to predict how these things shake out.

## *What's the point?*
On a deep level, I'm interested in robotics to do useful work. There are lots of economic arguments (UK productivity has stagnated for decades, our population is ageing, we suffer from skills shortages, we've haemorrhaged manufacturing capacity), which useful robots could help address. 

More niche is the idea that AI and robotics can teach us about ourselves. On an individual level, robotics is a humbling field. Your best efforts pale in comparison to the intelligence of a six year-old. More broadly, we could learn more about human intelligence from AI research. Here's an example: there's an AI algorithm which lets robots learn from their own experience, called TD learning (a subset of Reinforcement Learning). TD was invented in 1991. In 199X, neuroscience researchers discovered that the brain actually implements TD learning --- in a region called the basal ganglia which sits deep in 'the lizard brain' that was evolved long ago.

How cool is that? TD learning was invented to help AI learn for itself. But it also turned out to be a trick which our brains also happen to use. It would be great if we could learn more about the brain via AI research.


## *That's not very impressive.*
This one isn't a question, but it was a comment made by a visiting MP… Thanks for the feedback.

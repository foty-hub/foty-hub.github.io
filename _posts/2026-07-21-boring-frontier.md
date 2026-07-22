---
layout: post
title: "The Boring Frontier of Robotics"
subtitle: "Why backflips are easier than folding laundry."
math: false
draft: false
---

*I recently had the pleasure of spending a week at the Royal Society's Summer Science Exhibition, helping out at an exhibit hosted by my PhD lab (the Applied AI Lab at the Oxford Robotics Institute). Over the course of the week I delivered a spiel about our work countless times to members of the public. I thought I'd note it down for posterity.*


<figure class="illustration">
  <img src="/assets/images/pretty.png" width="640" height="480" alt="Selfie :)">
  <figcaption>Yours truly at the Royal Society exhibition. A wide thumbs up in honour of Frank, the lab's celebrity wide-armed robot.</figcaption>
</figure>

# The Spiel

Have you seen those internet videos of robots backflipping, or running marathons? What's surprising to a lot of people is that those kinds of tasks are actually easier than basic things we do daily without thinking about it --- things like making a cup of tea. Think about it; how come AI beat Garry Kasparov at chess 40 years ago, yet no one sells a laundry-folding robot? It's because many things we find hard (like chess) are easy for machines, and things we find easy (interacting with the real world) are unintuitively hard for robots.

<figure class="video">
  <img src="/assets/videos/robot_backflip.gif" width="560" height="315" alt="A robot performing a backflip">
  <figcaption>This backflip is attention-grabbing, but in many ways it's simpler than things we do without a second thought.</figcaption>
</figure>


The reason we find it easy to do complex things in the real world is that our brains are incredibly well-evolved for the job. Consider what happens when you go to pick something up. Before you move a muscle, your brain has figured out:
- Where the object is in 3D space, relative to you
- What size it is
- What shape it is (including the bits you can't see --- we regularly place our fingers on the backs of things we pick up)
- How heavy it's likely to be (and hence how hard we should grip)
- How grippy the surface is
- How we should hold it for the next thing we want to do (am I picking up scissors to cut paper or pass them to someone?)
- How our muscles should move together to get the hand to its destination
- How our stance should change to enable us to pick the object up (you might widen your stance or lean when grasping something heavy)
- How the object might move once we pick it up (e.g. is it solid, or does it contain a liquid which will slosh around?)

And that's just picking something up. We do all of this effortlessly, day in and day out, but robots get none of it for free. *That's* why LaundryBot isn't on supermarket shelves yet.

Our exhibit focussed mostly on manual assembly --- a task called [RAMP](https://arxiv.org/abs/2305.09644) which would take a 6 year old a minute or two. Our robot, Frank, managed it in maybe 5 minutes, so not too bad. Part of the point we were making was reliability. We were at the Royal Society for a week straight, running the demo on repeat. Robotics researchers often hit a success rate of 90+% and call it job done. But when you're demonstrating to sceptical teenagers, a one-in-ten failure rate is catastrophic. Modern robotics (and [digital AI](https://arxiv.org/abs/2602.16666), for that matter) often falls short of the reliability we'd want for useful autonomy in the messy real world --- another reason LaundryBot isn't here yet.

In short --- robots probably aren't coming for your job, or coming to kill you or anything that dramatic. They might be able to backflip on TikTok, but they still can't make you a cup of tea. That's what we're working on.


# FAQ

*A fun aspect of chatting to so many people over the course of the exhibition was being asked questions. Many questions. Here are some that came up repeatedly, and the responses I settled on.*

## *Haven't robots been doing assembly in factories for decades?*
They have! The reason is that we can control everything in a factory. If I'm a hole-punching robot in a factory, I don't need to know anything about the world. I get given a chunk of steel, and I move from position *a* to position *b* every time. Forever. If my chunk comes in the wrong orientation, I can't really adapt on the fly. So in factories, we get the benefit of robot control without the need for intelligent decision making. Outside of factories, we're not so lucky --- our metaphorical chunks of steel rarely come the same way twice.


## *What about surgical robots?*
Surgical robots appear different to factory robots, but they actually reinforce the general point. Surgical robots provide fine motor control, but they still delegate real-world understanding and decision-making to a human operator. The robot doesn't need to know where to make a cut, or which organ it's dealing with: it relies on the surgeon to fill in for its lack of understanding.


## *What about ChatGPT? This must nearly be solved?*
ChatGPT is really impressive. What's exciting for AI researchers is that it [wasn't trained for specific jobs](small-models), like writing poetry or knowing the capitals of countries. Instead, it learns all that stuff from a simple task --- next-token prediction of internet data. ChatGPT suggests a path to training robots that can *generalise* to new situations.

So why don't we just train ChatGPT for robots? **Data**. Us humans have spent decades writing things on the internet, but most of us didn't spend the same amount of time uploading quality robotics data, so there's nowhere near enough data for a RoboGPT.

To bridge the data gap, we reckon we need new ways of learning. ChatGPT is impressive, but modern AI is an embarrassingly slow learner. Think about self-driving cars. A teenager takes 20 hours to pass their test, armed with only their wits and their eyes. But a self-driving car, equipped with a 360-degree array of cameras, depth sensors, and high-resolution maps requires a million hours of training data. Self-driving cars are pretty good ([and allegedly safe](https://waymo.com/safety/impact/)), but it's clear that they learn slowly. That works for a single high-value use case like driving, but if we want robots to adapt and learn as effectively as we do, it seems like we need new breakthroughs.

*Addendum*: some people are trying a ChatGPT-style approach, with 'vision-language-action' models (VLAs). These take large language models, which handle text and images, then plug them into a model that learns to control a robot. The idea is that VLAs can use the broader knowledge LLMs get from the internet to kickstart real-world understanding. A good example of a company working on this approach is [Physical Intelligence](https://www.pi.website/blog/pi0).

## *How come we learn so much better than robots?*
That's the big question --- and no one knows the full answer. I do think there are a couple of interesting hints though.

One of them, which is increasingly hyped in AI circles, is the idea of a world model. If you watch me drop a glass onto a concrete floor, you can foresee the outcome --- we can predict what happens in the real world. For learning, that's a really rich signal because you can always predict how the world will react to your actions. In contrast, only learning when you finish a task, which is how some existing methods work, is a very sparse source of information. So world models might help robots learn more effectively from limited experience.

A deeper, related idea from neuroscience is 'predictive processing', which proposes that our perception of the world is just our brain's prediction of what it *ought to perceive*. Predictive processing is a loose inspiration for research into world models, but it's also interesting for many reasons beyond robotics; check out [The Experience Machine](https://uk.bookshop.org/p/books/the-experience-machine-how-our-minds-predict-and-shape-reality-andy-clark/e07a087f415446a4) by Andy Clark for a very digestible introduction!

Another angle that's interesting is how we learn when we're young. After all, a 5-year old could solve many of the problems that robots struggle with. Check out the video below of a baby messing around with toys on a mat. It plays with something, gets the measure of it, then gets bored and figures something else out. That mixture of intrinsic curiosity and realising when you've learned enough (i.e. getting bored) makes us really efficient at learning about the world, especially when we're young. There's research into intrinsic curiosity, but it's not a solved problem. Perhaps once we invent AI that enjoys playing about, we'll get closer to robots that understand the world.

<figure class="video">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/8vNxjwt2AqY" title="A baby exploring toys" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
  <figcaption>A baby roams around, getting the measure of a particular toy before it gets bored and moves on to the next.</figcaption>
</figure>


## *What degree should I do to study robotics?*
This is a question I got constantly from young students attending the Exhibition. Unfortunately, it's not one that I'm really qualified to answer, having bounced around from physics to teaching to journalism to data science and machine learning. The one thing I would say is that robotics is multidisciplinary. Roboticists come from academic backgrounds spanning 'pure' degrees like maths and statistics through to physics, computer science, electrical engineering, mechatronics, and industrial design. If I were giving advice, I'd say the most important thing is figuring out a STEM degree which you can get stuck into. You can figure out how robots fit in down the line.


## *What are the downstream applications of our research? Are these intended to be products?*
I think many universities' research does have an eye on downstream applications, but it's a bit of a halfway house. In my view, the right role for academia is to work on these ideas well before they're ready to be turned into products, figuring out the fundamental issues. At the same time, some problems are worth working on because they force you to solve deeper problems. Manual assembly like RAMP requires real-world, contact-rich interaction combined with long-horizon planning --- two substantial challenges for modern robots. 


## *What about jobs? Aren't robots going to take them all?*
It's a good question, and it's one that roboticists shouldn't be tackling alone. In general, we try to think about automating work which is dangerous, dull or dirty --- the kinds of jobs that we might not mind fewer people working in. But technology has affected work in meaningful ways in the past. You can look at the story of the Luddites, who are sometimes mocked for being regressive, but their concerns were pretty valid ([*Blood in the Machine*](https://uk.bookshop.org/p/books/blood-in-the-machine-the-origins-of-the-rebellion-against-big-tech-brian-merchant/eee7321a2cfbe3c7?ean=9780316487740) is a good book on this). These were people facing massive drops in their quality of life, and the destitution of their families. As a society, we've got to figure out what we automate, and how we look after the people impacted by technology --- robotics or otherwise.

At the same time, it's hard to forecast how technology affects work. One example that people cite sometimes is [the introduction of ATMs](https://www.aei.org/economics/what-atms-bank-tellers-rise-robots-and-jobs/), in the '60s. ATMs automated one of the main tasks of bank tellers, doling out cash. You might think that would cause a drop in bank teller headcount, but the opposite happened. The job changed, becoming more relational and less about handling money. And because ATMs reduced the risk of tellers mishandling cash, banks expanded the number of branches they staffed, leading to more bank tellers over time. It was only once mobile banking killed off in-person branches entirely that bank teller numbers began to dwindle.

In the ATM case, a robot automated one task rather than the whole job, and the job changed as a result. That doesn't mean that robotics won't disrupt people's lives, but it does tell us that it can be hard to predict how these things shake out.

## *What's the point?*
On a practical level, I'm interested in robots to can do useful work. There are economic reasons to care: UK [productivity has barely budged](https://www.reuters.com/world/uk/slow-growth-high-debt-troubled-uk-economy-awaits-election-winners-2024-04-19) since the financial crisis; our population [is ageing](https://www.ft.com/content/3a675f7f-ff46-4b8d-9744-08dfed18d23a?syn-25a6b1a6=1); farms, care homes and other labour-intensive sectors [struggle to find workers](https://www.theguardian.com/environment/2025/aug/13/dairy-farmers-worker-shortage-threatening-uk-food-security); and we’ve [haemorrhaged manufacturing capacity](https://www.reuters.com/world/uk/services-grip-uk-economy-tightens-manufacturing-share-ebbs-further-2024-09-11) just as the wider world is trending less friendly. Useful robots could help ease some of those pressures. They could also help us reach net zero, by making clean-energy infrastructure cheaper and safer to [build](https://www.ft.com/content/4c1c4152-1b07-415b-8833-e902cadb789d?utm_source=chatgpt.com&syn-25a6b1a6=1) and [maintain](https://www.investing.com/news/commodities-news/robotics-firm-raises-60-million-to-scale-up-wind-turbine-repairs-4076910). 

More niche, perhaps; we could learn more about human intelligence from AI research. Here's an example: there's an algorithm called TD Learning which lets an AI learn from its own experience. TD was invented in 1991. Six years later, neuroscience researchers discovered that the brain [actually implements TD learning](https://www.science.org/doi/10.1126/science.275.5306.1593) --- in a region called the basal ganglia, deep in 'the lizard brain' that evolved long ago.

How cool is that? TD learning was invented to help AI learn for itself. But it also turned out to be a trick which our brains use. It would be great if we could learn more about the brain via AI research.


## *That's not very impressive.*
This one isn't a question, but it was a comment made by a visiting MP. Thanks for the feedback…

# Conclusion
Thanks for reading! I had a great time practicing my spiel on the poor, unsuspecting members of the British public that came by our exhibit. That said, I'm still learning a lot about robotics, so these answers will doubtless change as I progress along my PhD and become suitably disillusioned. Either way, I hope this post was fun/interesting/useful!


*This post was written by hand (well, keyboard), without the use of LLMs. I know there are lots of em dashes, that's just because I'm a hack.*

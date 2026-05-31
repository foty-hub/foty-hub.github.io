---
layout: default
title: Font Lab
permalink: /font-lab/
math: true
---

<article class="font-lab">
  <h1>Font Lab</h1>

  <form class="font-lab-controls" aria-label="Font controls">
    <label>
      Body
      <select name="body">
        <option value="petrona">Petrona</option>
        <option value="lora">Lora</option>
        <option value="libre-caslon">Libre Caslon Text</option>
        <option value="sorts-mill-goudy">Sorts Mill Goudy</option>
        <option value="baskervville">Baskervville</option>
        <option value="eb-garamond">EB Garamond</option>
      </select>
    </label>
    <label>
      Heading
      <select name="heading">
        <option value="avenir">Avenir LT Pro</option>
        <option value="futura">Futura LT Pro</option>
      </select>
    </label>
    <label>
      Math
      <select name="math">
        <option value="katex-default">KaTeX default</option>
        <option value="euler">Euler Math</option>
        <option value="concrete">Concrete Math</option>
        <option value="gfs-neohellenic">GFS Neohellenic Math</option>
        <option value="stix-two">STIX Two Math</option>
        <option value="newpx">NewPX / Pagella preview</option>
      </select>
    </label>
  </form>

  <p id="font-lab-current" class="font-lab-current"></p>

  <section class="font-lab-section">
    <h1>World Models and Useful Machines</h1>
    <p class="subtitle">A compact subtitle with names, dates, and enough texture to expose rhythm.</p>
    <h2>Research Notes</h2>
    <p>The robot never sees the world directly. It receives fragments: pixels, torques, occasional failures, and the quiet statistical structure hiding between them. A useful model turns those fragments into a surface you can plan across, without pretending the surface is the territory.</p>
    <p>Good typography should make this kind of prose feel calm at reading length. It needs enough contrast for emphasis, enough warmth for essay writing, and enough discipline for technical terms like <strong>model predictive control</strong>, <em>latent dynamics</em>, and <code>rollout_horizon</code>.</p>
    <h3>Compact Subheading</h3>
    <p>The fast test is whether headings scan cleanly beside dense serif body copy, especially when the line wraps on mobile screens.</p>
    <h4>Small Heading</h4>
    <p>ABCDEFGHIJKLMNOPQRSTUVWXYZ<br>abcdefghijklmnopqrstuvwxyz<br>0123456789,.;:!?&amp;@()</p>
  </section>

  <section class="font-lab-section">
    <h2>Display and Chart Labels</h2>
    <p class="font-lab-display-sample">DRAFT PAPER stays for punchy labels</p>
    <div class="font-lab-chart" aria-label="Chart label sample">
      <span class="font-lab-chart-label">LOSS</span>
      <span class="font-lab-chart-bar" style="width: 72%;"></span>
      <span class="font-lab-chart-label">SPEED</span>
      <span class="font-lab-chart-bar" style="width: 48%;"></span>
      <span class="font-lab-chart-label">ERROR</span>
      <span class="font-lab-chart-bar" style="width: 33%;"></span>
    </div>
  </section>

  <section class="font-lab-section">
    <h2>Blog Listing and Book Notes</h2>
    <article class="blog-post-listing">
      <h3><a href="{{ '/blog/mpc' | relative_url }}">A Worked Introduction to Model-Predictive Control</a></h3>
      <p class="blog-post-summary">
        <time class="blog-post-date" datetime="2026-05-12">May 12, 2026</time>
        <span>A worked introduction to Model-Predictive Control for Machine Learners.</span>
      </p>
    </article>

    <details class="book-note" open>
      <summary>
        <span class="book-row">
          <span class="book-date">May 31</span>
          <span class="book-main">
            <cite>Seeing Like a State</cite>
            <span class="book-author">James C. Scott</span>
            <span class="book-rating">9/10</span>
          </span>
        </span>
      </summary>
      <p>A short note preview with a few descenders, lining figures, and a quoted title.</p>
    </details>
  </section>

  <section class="font-lab-section">
    <h2>Math and Code</h2>
    <p>Inline math should sit comfortably in text: $x_{t+1} = f_\theta(x_t, u_t) + \epsilon_t$, while display math should still feel deliberate. This sample includes specialist alphabets and stretchy delimiters: $\mathcal{L}(x)$, $\mathscr{R}$, $\mathbb{R}$, $\mathfrak{G}$, and $\left[\frac{x_t}{1 + \gamma^2}\right]$.</p>

    $$
    J(\theta) = \mathbb{E}_{\tau \sim \pi_\theta}\left[\sum_{t=0}^{T} \gamma^t r(s_t, a_t)\right] + \mathcal{R}(\theta) + \mathfrak{L}
    $$

    <pre class="highlight"><code>def rollout(model, state, actions):
    for action in actions:
        state = model.predict(state, action)
    return state</code></pre>
  </section>
</article>

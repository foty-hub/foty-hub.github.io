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
      Pairing
      <select name="font-pairing">
        <option value="bricolage-dm">Bricolage Grotesque / DM Sans</option>
        <option value="archivo-dm">Archivo / DM Sans</option>
        <option value="schibsted-source">Schibsted Grotesk / Source Sans 3</option>
        <option value="sora-dm">Sora / DM Sans</option>
        <option value="fraunces-dm">Fraunces / DM Sans</option>
        <option value="fraunces-monolisa-text">Fraunces / MonoLisa Text</option>
      </select>
    </label>
    <label>
      Body size
      <select name="body-size">
        <option value="100">100%</option>
        <option value="102">102%</option>
        <option value="104">104%</option>
        <option value="106">106%</option>
        <option value="108">108%</option>
        <option value="110">110%</option>
      </select>
    </label>
    <label>
      Body weight
      <select name="body-weight">
        <option value="400">400</option>
        <option value="425">425</option>
        <option value="450">450</option>
        <option value="475">475</option>
        <option value="500">500</option>
      </select>
    </label>
    <label>
      <span class="font-lab-range-label">
        <span>Fraunces wonk</span>
        <output id="font-lab-fraunces-wonk-value" for="font-lab-fraunces-wonk">1</output>
      </span>
      <input id="font-lab-fraunces-wonk" type="range" name="fraunces-wonk" min="0" max="1" step="0.05" value="1">
    </label>
    <label>
      Math
      <select name="math">
        <option value="katex-default">KaTeX default</option>
        <option value="luciole">Luciole Math</option>
        <option value="fira-math">Fira Math</option>
        <option value="lete-sans-math">Lete Sans Math</option>
        <option value="euler">Euler Math</option>
        <option value="concrete">Concrete Math</option>
        <option value="gfs-neohellenic">GFS Neohellenic Math</option>
        <option value="stix-two">STIX Two Math</option>
        <option value="newpx">NewPX / Pagella preview</option>
      </select>
    </label>
    <fieldset class="font-lab-feature-group">
      <legend>MonoLisa Text features</legend>
      <div class="font-lab-feature-list">
        <label><input type="checkbox" name="monolisa-text-feature" value="liga" data-monolisa-text-feature checked> liga</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="calt" data-monolisa-text-feature checked> calt</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="zero" data-monolisa-text-feature> zero</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss01" data-monolisa-text-feature> ss01</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss02" data-monolisa-text-feature> ss02</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss03" data-monolisa-text-feature checked> ss03</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss04" data-monolisa-text-feature> ss04</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss05" data-monolisa-text-feature> ss05</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss06" data-monolisa-text-feature> ss06</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss07" data-monolisa-text-feature> ss07</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss08" data-monolisa-text-feature checked> ss08</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss09" data-monolisa-text-feature checked> ss09</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss10" data-monolisa-text-feature> ss10</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss11" data-monolisa-text-feature> ss11</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss12" data-monolisa-text-feature> ss12</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss13" data-monolisa-text-feature> ss13</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss14" data-monolisa-text-feature> ss14</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss15" data-monolisa-text-feature checked> ss15</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss16" data-monolisa-text-feature> ss16</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss17" data-monolisa-text-feature> ss17</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss18" data-monolisa-text-feature> ss18</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss19" data-monolisa-text-feature> ss19</label>
        <label><input type="checkbox" name="monolisa-text-feature" value="ss20" data-monolisa-text-feature> ss20</label>
      </div>
    </fieldset>

    <fieldset class="font-lab-feature-group">
      <legend>MonoLisa Code features</legend>
      <div class="font-lab-feature-list">
        <label><input type="checkbox" name="monolisa-code-feature" value="liga" data-monolisa-code-feature> liga</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="calt" data-monolisa-code-feature> calt</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="zero" data-monolisa-code-feature> zero</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss01" data-monolisa-code-feature> ss01</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss02" data-monolisa-code-feature> ss02</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss03" data-monolisa-code-feature> ss03</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss04" data-monolisa-code-feature> ss04</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss05" data-monolisa-code-feature> ss05</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss06" data-monolisa-code-feature> ss06</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss07" data-monolisa-code-feature> ss07</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss08" data-monolisa-code-feature checked> ss08</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss09" data-monolisa-code-feature checked> ss09</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss10" data-monolisa-code-feature> ss10</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss11" data-monolisa-code-feature> ss11</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss12" data-monolisa-code-feature> ss12</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss13" data-monolisa-code-feature checked> ss13</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss14" data-monolisa-code-feature checked> ss14</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss15" data-monolisa-code-feature> ss15</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss16" data-monolisa-code-feature> ss16</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss17" data-monolisa-code-feature> ss17</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss18" data-monolisa-code-feature> ss18</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss19" data-monolisa-code-feature> ss19</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="ss20" data-monolisa-code-feature> ss20</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv01" data-monolisa-code-feature checked> cv01</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv02" data-monolisa-code-feature> cv02</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv03" data-monolisa-code-feature> cv03</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv04" data-monolisa-code-feature> cv04</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv05" data-monolisa-code-feature checked> cv05</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv06" data-monolisa-code-feature> cv06</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv07" data-monolisa-code-feature> cv07</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv08" data-monolisa-code-feature checked> cv08</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv09" data-monolisa-code-feature checked> cv09</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv10" data-monolisa-code-feature> cv10</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv11" data-monolisa-code-feature> cv11</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv12" data-monolisa-code-feature> cv12</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv13" data-monolisa-code-feature> cv13</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv14" data-monolisa-code-feature> cv14</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv15" data-monolisa-code-feature> cv15</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv16" data-monolisa-code-feature> cv16</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv17" data-monolisa-code-feature> cv17</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv18" data-monolisa-code-feature> cv18</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv19" data-monolisa-code-feature> cv19</label>
        <label><input type="checkbox" name="monolisa-code-feature" value="cv20" data-monolisa-code-feature> cv20</label>
      </div>
    </fieldset>
  </form>

  <p id="font-lab-current" class="font-lab-current"></p>

  <section class="font-lab-section">
    <h1>World Models and Useful Machines</h1>
    <p class="subtitle">A compact subtitle with names, dates, and enough texture to expose rhythm.</p>
    <h2>Research Notes</h2>
    <p>The robot never sees the world directly. It receives fragments: pixels, torques, occasional failures, and the quiet statistical structure hiding between them. A useful model turns those fragments into a surface you can plan across, without pretending the surface is the territory.</p>
    <p>Good typography should make this kind of prose feel calm at reading length. It needs enough contrast for emphasis, enough warmth for essay writing, and enough discipline for technical terms like <strong>model predictive control</strong>, <em>latent dynamics</em>, and <code>rollout_horizon</code>.</p>
    <h3>Compact Subheading</h3>
    <p>The fast test is whether the heading face has enough character beside readable sans body copy, especially when the line wraps on mobile screens.</p>
    <h4>Small Heading</h4>
    <p>ABCDEFGHIJKLMNOPQRSTUVWXYZ<br>abcdefghijklmnopqrstuvwxyz<br>0123456789,.;:!?&amp;@()</p>
  </section>

  <section class="font-lab-section">
    <h2>Heading Labels</h2>
    <p class="font-lab-display-sample">The heading face drives nav, labels, titles, and dates: A0123456789</p>
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
    <p class="font-lab-monolisa-sample">MonoLisaText: office affine efficient ffl ffi file flag 0 O == != &lt;= &gt;= -&gt; =&gt; &amp;&amp; ||</p>
    <p>Inline math should sit comfortably in text: $x_{t+1} = f_\theta(x_t, u_t) + \epsilon_t$, while display math should still feel deliberate. This sample includes specialist alphabets and stretchy delimiters: $\mathcal{L}(x)$, $\mathscr{R}$, $\mathbb{R}$, $\mathfrak{G}$, and $\left[\frac{x_t}{1 + \gamma^2}\right]$.</p>

    $$
    J(\theta) = \mathbb{E}_{\tau \sim \pi_\theta}\left[\sum_{t=0}^{T} \gamma^t r(s_t, a_t)\right] + \mathcal{R}(\theta) + \mathfrak{L}
    $$

    <pre class="highlight"><code>def rollout(model, state, actions):
    for action in actions:
        if action != None and action &lt;= model.limit:
            state = model.predict(state, action)
    return state</code></pre>
  </section>
</article>

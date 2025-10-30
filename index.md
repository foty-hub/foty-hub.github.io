---
layout: default
title: Home
---

<section id="about">
  <img
    id="about-portrait"
    class="portrait"
    src="{{ '/assets/portrait/portrait.gif' | relative_url }}"
    data-still="{{ '/assets/portrait/portrait.png' | relative_url }}"
    alt="Portrait of Alex"
    style="float:right;width:140px;height:auto;border-radius:8px;margin-left:1rem;margin-bottom:0.5rem;"
  >
  <h2 style="margin-top:0.25rem">About</h2>
  <p>Hello! I'm <strong>Alex</strong>, I'm studying for a DPhil in AI & Robotics at the <a href="https://ori.ox.ac.uk/labs/a2i/">Applied AI Lab</a> at Oxford, as part of the <a href="https://www.rainz-cdt.ac.uk/">RAINZ CDT</a>. I work on world models for robotics, supervised by Professor Ingmar Posner. My research interests are world models, autonomous agentic systems and reinforcement learning.</p>
</section>

<section id="research" style="clear: both;">
  <h2>Research</h2>
  <div class="research-list">
    <article class="research-item">
      <div class="research-media">
        <a href="{{ '/assets/pdfs/ucl_msc_thesis.pdf' | relative_url }}" target="_blank" rel="noopener">
          <img src="{{ '/assets/images/msc_thesis_thumbnail.png' | relative_url }}" alt="Conformal Calibration thumbnail">
        </a>
      </div>
      <div class="research-content">
        <h3>Conformal Calibration (UCL MSc Thesis), <em>Sept 2025</em></h3>
        <p>A post-training method which makes value-based RL algorithms more robust to distribution shift. The idea works by observing agents in the training environment and using conformal prediction to lower bound the action-value function. 
        <br>
        <br>
        Supervised by Mirco Musolesi and Lorenz Wolf.</p>
      </div>
    </article>
    <article class="research-item">
      <div class="research-media">
        <a href="{{ '/assets/pdfs/wander_paper.pdf' | relative_url }}" target="_blank" rel="noopener">
          <img src="{{ '/assets/images/wander_thumbnail.png' | relative_url }}" alt="Evolve to Inspire thumbnail">
        </a>
      </div>
      <div class="research-content">
        <h3>WANDER: Evolve to Inspire, <em>Aug 2025</em></h3>
        <p>An open-ended system for evolving interesting images to serve as a source of inspiration. The method uses novelty search over LLM prompts with diffusion models to evolve diverse sets of images (evaluated using CLIP distance). 
        <br>
        <br>
        Accepted to the NeurIPS workshop GenProCC.</p>
      </div>
    </article>
  </div>
</section>

<script>
// Swap the About portrait GIF to PNG after it animates once
(function() {
  var img = document.getElementById('about-portrait');
  if (!img) return;
  var stillSrc = img.getAttribute('data-still');
  if (!stillSrc) return;

  // Respect reduced motion preferences
  try {
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
      img.src = stillSrc;
      return;
    }
  } catch (e) { /* no-op */ }

  // Preload the still image so the swap is seamless
  var preload = new Image();
  preload.src = stillSrc;

  // Fallback duration (ms) to let GIF play once; adjust if needed
  var SWAP_DELAY = 13_000;

  function swapToStill() {
    // Only swap if we haven't already
    if (img && img.src && img.src.indexOf('portrait.gif') !== -1) {
      img.src = stillSrc;
    }
  }

  // If the GIF hasn't loaded yet, start the timer after load; otherwise start now
  if (!img.complete) {
    var onload = function() {
      img.removeEventListener('load', onload);
      setTimeout(swapToStill, SWAP_DELAY);
    };
    img.addEventListener('load', onload);
  } else {
    setTimeout(swapToStill, SWAP_DELAY);
  }

  // If the GIF fails to load, immediately show the still
  img.addEventListener('error', function() {
    img.src = stillSrc;
  });
})();
</script>

<section id="publications">
  <h2>Publications</h2>
  <ul>
    <li>
      Inch A., Chaiyattapom P., Ko T., Yuan L., Zhu Y. and Pagliere D. (2025). Evolve to Inspire: Novelty Search for Diverse Image Generation. <em>NeurIPS 2025, GenProCC Workshop</em>
    </li>
    <!-- <li>Doe, J. (2021). Title of paper. <em>Journal Name</em>.</li> -->
    <!-- <li>Doe, J., &amp; Smith, A. (2020). Title of another paper. <em>Conference Name</em>.</li> -->
  </ul>
</section>

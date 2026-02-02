---
layout: default
title: Blog
---

<h1>{{ page.title }}</h1>

{% assign visible_posts = site.posts | where_exp: "post", "post.draft != true" %}

<ul>
  {% for post in visible_posts %}
    <li>
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p>{{ post.subtitle }}</p>
      <p>{{ post.date | date: "%B %d, %Y" }}</p>
    </li>
  {% endfor %}
</ul>

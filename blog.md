---
layout: default
title: Blog
---

<h1>{{ page.title }}</h1>

<section class="blog-feature">
  <h2><a href="{{ '/blog/books-ive-read' | relative_url }}">Books I've Read</a></h2>
  <p>Short notes and ratings on books I've been reading.</p>
</section>

<section class="blog-posts" id="posts">
  <h2>Posts</h2>

{% assign visible_posts = site.posts | where_exp: "post", "post.draft != true" %}
{% assign listed_posts = visible_posts | where_exp: "post", "post.featured != true" %}

  <ul>
  {% for post in listed_posts %}
    <li>
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p>{{ post.subtitle }}</p>
      <p>{{ post.date | date: "%B %d, %Y" }}</p>
    </li>
  {% endfor %}
  </ul>
</section>

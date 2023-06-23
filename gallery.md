---
layout: home
---

<div class="slideshow">
  {% for image in site.static_files %}
    {% if image.path contains 'images' %}
      <img src="{{ site.baseurl }}{{ image.path }}" alt="{{ image.name }}">
    {% endif %}
  {% endfor %}
</div>

<script
src="{{ site.baseurl }}galleryscript.js"></script>

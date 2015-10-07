<h1 id="{{ type }}" class="type__title">
  <span data-role="content-wrapper">
    {{ (type + 's') }}
  </span>
</h1>

<section class="type__{{ (type + 's') }}">
  {% for item in items %}
    {% include "item.swig" with item %}
  {% endfor %}
</section>

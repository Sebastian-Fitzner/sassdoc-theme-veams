{% if item.example.length > 0 %}
  <section class="c-example">
    <h3 class="example__heading is-heading-std">Example</h3>

    {% for example in item.example %}
      <pre class="code language-{{ example.type }}">{% if example.description %}<h4 class="description">{{ example.description | safe }}</h4>{% endif %}<code>{{ example.code | escape | safe }}</code></pre>
      {% endfor %}
    </section>
{% endif %}

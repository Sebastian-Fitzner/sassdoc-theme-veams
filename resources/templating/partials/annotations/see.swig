{% set title_displayed = false %}
{% for see in item.see %}

  {% if (view.display.access.indexOf(see.access[0]) != -1) and not (not view.display.alias and see.alias[0]) %}
    {% if not title_displayed %}
      {% set title_displayed = true %}
<div class="c-see">
	<h3 class="see__headline is-heading-std">See</h3>
	<ul class="see__list is-list-inline">
	{% endif %}

	<li class="see__list-item"><a class="see__link" href="#{{ see.context.type }}-{{ see.context.name }}"><code>{{ see.context.name }}</code></a></li>
	{% endif %}

	{% endfor %}

	{% if title_displayed %}
	</ul>
</div>
{% endif %}

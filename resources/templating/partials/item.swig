{% set name = item.context.name %}
<article id="{{ item.context.type }}-{{ name }}" data-name="{{ name }}" data-type="{{ item.context.type }}" class="c-article--item" data-css="c-article"
	{% if item.alias %} data-alias="true"{% endif %}
	{% if item.deprecated %} data-deprecated="true"{% endif %}>
	<div data-role="content-wrapper">
		{% include "annotations/title.swig" %}
		{% include "annotations/declaration.swig" %}

		{% if not item.alias %}
			{% for annotation in view.annotations[item.context.type] %}
				{% set path = "annotations/" + annotation + ".swig" %}
				{% include path %}
			{% endfor %}
		{% else %}
			<p>Refer to
				<a class="article__refer" href="#{{ item.context.type }}-{{ item.alias[0] }}">{{ item.alias[0] }}</a>.
			</p>
		{% endif %}
	</div>
</article>
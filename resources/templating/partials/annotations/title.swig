<header class="article__header">
	<h2 class="article__header-headline" id="#{{ name }}">
		{{ name }}
	</h2>

	{% if item.context.type == "variable" %}
		<span class="is-type-label">{{ item.type }}</span>
	{% endif %}

	<div class="article__metadata">
		{% if view.display.alias and item.aliased.length > 0 %}
			<span class="article__aliased"> (aliased as {% for alias in item.aliased %}
				<a href="#{{ alias }}"><code>{{ alias }}</code></a> {% endfor %}) </span>
		{% endif %}

		{% if item.alias %}
			<span class="article__alias">(alias for <a href="#{{ item.alias[0] }}"><code>{{ item.alias[0] }}</code></a>)</span>
		{% endif %}

		{% if item.since.length == 1 %}
			<span class="article__since">Since {{ item.since[0].version }} - {{ item.since[0].description }}</span>
		{% endif %}

		{% if item.deprecated %}
			<p class="article__deprecated">
				<strong>Deprecated!</strong>{% if item.deprecated[0] != "" %} {{ item.deprecated[0] }}{% endif %}
			</p>
		{% endif %}
	</div>

	{% if view.baseSourcePath %}
		<a class="is-view-source" href="{{ view.baseSourcePath }}/{{ item.file.path }}">View source</a>
	{% endif %}
</header>

<div class="c-declaration">
	{% if item.context.type == "placeholder" %}
		<pre class="declaration__code language-scss"><code>%{{ item.context.name }} { ... }</code></pre>
	{% elseif item.context.type == "variable" %}
		<pre class="declaration__code language-scss"><code>${{ item.context.name }}: {{ item.context.value | safe }}{% if item.context.scope !== "private" %} !{{ item.context.scope }}{% endif %};</code></pre>

	{% else %}
		{% set parameters_string = '' %}
		{% for parameter in item.parameter %}
			{% set value = '$' + parameter.name %}

			{% if parameter.default %}
				{% set value = value + ': ' + parameter.default %}
			{% endif %}

			{% if parameter.type|lower === "arglist" %}
				{% set value = value + '...' %}
			{% endif %}

			{% if loop.first %}
				{% set parameters_string = value %}
			{% else %}
				{% set parameters_string = parameters_string + ', ' + value %}
			{% endif %}
		{% endfor %}

		<div class="declaration__code-wrapper">
		  <pre class="declaration__code language-scss is-collapsed"
		       data-js-expanded="@{{ item.context.type }} {{ item.context.name }}({{ parameters_string }}) { {{ item.context.code }} }"
		       data-js-collapsed="@{{ item.context.type }} {{ item.context.name }}({{ parameters_string }}) { ... }"><code>@{{ item.context.type }} {{ item.context.name }}({{ parameters_string }}) { ... }</code></pre>

			{% if basePath %}
				<a href="{{ basePath }}/{{ item.file.path }}#L{{ item.context.line.start }}-L{{ item.context.line.end }}" class="declaration__link" target="_blank">View source</a>
			{% endif %}
		</div>
	{% endif %}
</div>

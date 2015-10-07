{% if item.parameter.length > 0 %}
<div class="c-param">
	<h3 class="param__headline is-heading-std">Parameters</h3>
	<dl class="param__list">
		{% for parameter in item.parameter %}
			<dt class="param__list-item">
				<code class="param__name">${{ parameter.name }}</code>
				<ul class="param__meta-list">
					<span class="param__label">{{ parameter.type | split("|") | trim | join(", ") }}</span>
					{% if not parameter.default %}
						<span class="param__required">Required</span>
					{% else %}
						<span class="param__default"> Default:<code>{{ parameter.default }}</code> </span>
					{% endif %}
				</ul>
				<dd class="param__definition">
					<div class="param__description">
						{{ parameter.description | default("<p>No description available.</p>") | safe }}
					</div>
				</dd>
			</dt>
		{% endfor %}
	</dl>
</div>
{% else %}
<div class="c-param">
	<p>This {{ item.context.type }} takes no parameters.</p>
</div>
{% endif %}

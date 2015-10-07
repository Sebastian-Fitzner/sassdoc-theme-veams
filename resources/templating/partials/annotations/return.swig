{% if item.return %}
	<div class="c-returns">
		<h3 class="returns__headline is-heading-std">Returns</h3>

		<p class="returns__description">{% if item.return.description %}{{ item.return.description | safe }}{% endif %}
			{% if item.return.type == '*' %}
				Any
			{% else %}
				{{ item.return.type | split('|') | trim | capitalize | join(', ') }}
			{% endif %}
		</p>
	</div>
{% endif %}

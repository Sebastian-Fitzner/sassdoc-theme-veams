{% if item.prop.length > 0 %}
	<div class="c-prop">
		<h3 class="prop__headline is-heading-std">Map structure</h3>

		<table class="prop__list">
			<thead>
			<tr>
				<th scope="col"><span class="visually-hidden">{{ item.type }} key </span>Name</th>
				<th scope="col"><span class="visually-hidden">{{ item.type }} key </span>Description</th>
				<th scope="col"><span class="visually-hidden">{{ item.type }} key </span>Type</th>
				<th scope="col"><span class="visually-hidden">{{ item.type }} key </span>Value</th>
			</tr>
			</thead>

			<tbody>
			{% for prop in item.prop %}
				<tr class="prop__parameter">
					<th scope="row" data-label="name"><code>{{ prop.name }}</code></th>
					<td data-label="desc">{{ prop.description | default('&mdash;<span class="visually-hidden"> none</span>') | safe }}</td>
					<td data-label="type">
						{{ prop.type | split('|') | trim | capitalize | join(', ') }}
					</td>
					<td data-label="default">
						{% if not prop.default %}
							&mdash;<span class="visually-hidden"> none</span>
						{% else %}
							<code>{{ prop.default }}</code>
						{% endif %}
					</td>
				</tr>
			{% endfor %}
			</tbody>
		</table>
	</div>
{% endif %}

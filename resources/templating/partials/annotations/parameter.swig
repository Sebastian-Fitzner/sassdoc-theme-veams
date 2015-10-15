{% if item.parameter.length > 0 %}
	<div class="c-param">
		<h3 class="param__headline is-heading-std">Parameters</h3>
		<table class="c-table--zebra" data-css="c-table">
			<thead class="table__head">
			<tr class="table__row">
				<th class="table__head-inner is-th"><span class="visually-hidden">{{ item.type }} parameter </span>Name</th>
				<th class="table__head-inner is-th"><span class="visually-hidden">{{ item.type }} parameter </span>Description</th>
				<th class="table__head-inner is-th"><span class="visually-hidden">{{ item.type }} parameter </span>Type</th>
				<th class="table__head-inner is-th"><span class="visually-hidden">{{ item.type }} parameter </span>Default value</th>
			</tr>
			</thead>
			<tbody class="table__body">
			{% for parameter in item.parameter %}
				<tr class="table__row">
					<td scope="row" data-label="name" class="table__data is-td"><code>${{ parameter.name }}</code></td>
					<td data-label="desc" class="table__data is-td">{{ parameter.description|default('&mdash;<span class="visually-hidden"> none</span>')|safe }}</td>
					<td data-label="type" class="table__data is-td">
						<code>
							{% if parameter.type == '*' %}
								Any
							{% else %}
								{{ parameter.type }}
							{% endif %}
						</code>
					</td>
					<td data-label="default" class="table__data is-td">
						{% if not parameter.default %}
							&mdash;<span class="visually-hidden"> none</span>
						{% else %}
							<code>{{ parameter.default }}</code>
						{% endif %}
					</td>
				</tr>
			{% endfor %}
			</tbody>
		</table>
	</div>
{% else %}
	<div class="c-param">
		<p>This {{ item.context.type }} takes no parameters.</p>
	</div>
{% endif %}

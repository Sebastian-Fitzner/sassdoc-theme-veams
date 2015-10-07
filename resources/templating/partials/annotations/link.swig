{% if item.link.length > 0 %}
	<div class="c-links">
		<h3 class="links__heading is-heading-std">Links</h3>

		<ul class="links__list is-list-unstyled">
			{% for link in item.link %}
				<li class="links__list-item">
					<a class="links__link" href="{{ link.url }}">
						{% if link.caption %}
							{{ link.caption }}
						{% else %}
							{{ link.url }}
						{% endif %}
					</a>
				</li>
			{% endfor %}
		</ul>
	</div>
{% endif %}

{% if item.htmlThrows.length > 0 %}
	<div class="c-throws">
		<h3 class="throws__headline is-heading-std">Throws</h3>

		<ul class="throws__list is-list-unstyled">
			{% for _throw in item.htmlThrows %}
				<li class="throws__list-item">{{ _throw | safe }}</li>
			{% endfor %}
		</ul>
	</div>
{% endif %}

{% if item.htmlAuthor %}
	<div class="c-author">
		<h3 class="author__heading is-heading-std">Author{% if item.htmlAuthor.length > 1 %}s{% endif %}</h3>

		<ul class="atuhor__list is-list-unstyled">
			{% for author in item.htmlAuthor %}
				<li class="author__list-item">{{ author | safe }}</li>
			{% endfor %}
		</ul>
	</div>

{% endif %}

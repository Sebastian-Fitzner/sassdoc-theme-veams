<li class="toc__title">
	<h3 class="toc__cat">
		<a href="#{{ type }}">
			{{ (type + 's') }}
		</a>
	</h3>
</li>

{% for item in items %}
	<li class="toc__list-item">
		<a class="toc__link" href="#{{ item.context.type }}-{{ item.context.name }}">{{ item.context.name }}</a>
	</li>
{% endfor %}
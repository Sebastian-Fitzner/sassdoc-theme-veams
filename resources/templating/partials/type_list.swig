<li class="side-nav__title">
	<a href="#{{ type }}">
		<h3 class="side-nav__type">{{ (type + 's') }}</h3>
	</a>
</li>

{% for item in items %}
	<li class="side-nav__list-item">
		<a class="side-nav__link" href="#{{ item.context.type }}-{{ item.context.name }}">{{ item.context.name }}</a>
	</li>
{% endfor %}
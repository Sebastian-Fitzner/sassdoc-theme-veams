<nav class="side-nav">
	<ul class="side-nav__social">
		<li><a class="side-nav__github" href="{{ view.links.github }}">GitHub / Install</a></li>
		<li><a class="side-nav__twitter" href="{{ view.links.twitter }}">Twitter</a></li>
		<li><a class="side-nav__gitter" href="{{ view.links.gitter }}">Gitter</a></li>
	</ul>

	<a class="side-nav__logo-container" href="{{ view.library.homepage }}">
		<img alt="{{ view.library.name }} Logo" class="logo" src="{{ view.logoPath }}"> </a>

	<ul class="side-nav__list">
		{% for group_name, group in data.byGroupAndType %}
			<a class="side-nav__group" data-slug="{{ group_name }}" href="#{{ group_name }}">{{ groups[group_name] }}</a>
			{% for type, items in group %}
				{% include "type_list.swig" %}
			{% endfor %}
		{% endfor %}
	</ul>
</nav>

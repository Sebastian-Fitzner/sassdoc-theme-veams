<nav class="b-toc">
	<header class="header">
		<div class="header__inner is-table-lyt">
			<div class="r-header-left">
				<div class="b-logo">
					<h1 class="logo__headline">
						<a class="logo__link is-veams-sass" href="/sass/"> Veams-Sass </a>
					</h1>
				</div>
			</div>
			<div class="r-header-right">
				<div class="b-github">
					<h2 class="github__headline">
						<a class="github__link" target="_blank" href="https://github.com/sebastian-fitzner/veams-sass"> Go To Github </a>
					</h2>
				</div>
			</div>
		</div>
	</header>

	{% for group_name, group in data.byGroupAndType %}
		<div class="toc__content" data-js-module="toggler">
			<a class="toc__headline" data-slug="{{ group_name }}" href="#{{ group_name }}" data-js-atom="toggler-button">{{ groups[group_name] }}</a>
			<ul class="toc__list" data-js-atom="toggler-content" data-js-options='{}'>
				{% for type, items in group %}
					{% include "type_list.swig" %}
				{% endfor %}
			</ul>
		</div>

	{% endfor %}

</nav>
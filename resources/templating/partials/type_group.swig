<div class="zone is-container-padding" data-css="zone">
	<div class="zone__inner">
		<section class="section--item">
			<header class="section__header">
				<h2 id="{{ type }}" class="section__header-headline">
					<span data-role="content-wrapper">
						{{ (type + 's') }}
					</span>
				</h2>
			</header>

			<div class="section__content is-type-{{ (type + 's') }}">
				<div class="c-rte--documentation" data-css="c-rte">
					{% for item in items %}
						{% include "item.swig" with item %}
					{% endfor %}
				</div>
			</div>
		</section>
	</div>
</div>

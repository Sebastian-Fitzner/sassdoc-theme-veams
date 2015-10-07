{% if item.htmlTodo.length > 0 %}
	<div class="c-todo">
		<h3 class="todo__headline is-heading-std">TODO's</h3>

		<ul class="todo__list is-list-unstyled">
			{% for todo in item.htmlTodo %}
				<li class="todo__list-item">{{ todo | safe }}</li>
			{% endfor %}
		</ul>
	</div>
{% endif %}

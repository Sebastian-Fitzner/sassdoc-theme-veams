{% if item.htmlOutput[0] %}
	<div class="c-output">
		<h3 class="output__headline is-heading-item">Output</h3>

		<p class="output__description">{{ item.htmlOutput[0] | safe }}</p>
	</div>
{% endif %}

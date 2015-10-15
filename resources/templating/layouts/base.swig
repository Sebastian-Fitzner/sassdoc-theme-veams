<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta name="description" content="{{ package.description }}">
	<title>{{ package.title }}</title>
	<link href="http://fonts.googleapis.com/css?family=Roboto:400,700,900,300" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="css/styles.css"/>
</head>

<body>

	<div class="page-wrapper">
		<section class="r-sidebar">
			{% include "../partials/navigation.swig" %}
		</section>
		<div class="r-content">

			<!--<div class="r-search">
				<div class="b-search" data-role="search-form">
					<input name="search" type="text" class="search__field" autocomplete="off" autofocus id="search-field" placeholder="Search documentation..." data-js-module="search"/>
					<ul class="suggestion-container"></ul>
				</div>
			</div>-->

			<main class="r-main">
				<div class="main__inner">
					<div class="main__content">
						<div class="r-main-left">
							{% block content %}{% endblock %}
						</div>
					</div>
				</div>
			</main>
		</div>

	</div>
	{% include "../partials/javascript.swig" %}
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta name="description" content="{{ package.description }}">
	<link href="http://fonts.googleapis.com/css?family=Nunito:300,700" rel="stylesheet" type="text/css">
	<link href="http://fonts.googleapis.com/css?family=Titillium+Web:400,400italic,600italic,600,700,700italic,900,300italic,300,200italic,200" rel="stylesheet" type="text/css">
	<link rel="shortcut icon" type="image/x-icon" href="{{ view.faviconPath }}"/>
	<title>{{ package.title }}</title>
	<link rel="stylesheet" href="assets/css/main.css"/>
</head>

<body>

	<div class="page-wrapper">
		<header class="r-header">
			<div class="logo__meta-data">
				<h1>{{ package.name | capitalize }}{% if package.version %}
						<span>{{ package.version }}</span>{% endif %}</h1>
			</div>

			<div class="b-search" data-role="search-form">
				<input name="search" type="text" class="search__field" autocomplete="off" autofocus id="search-field" placeholder="Search documentation..." data-js-module="search"/>
				<ul class="suggestion-container"></ul>
			</div>
		</header>
		<main class="main-content" id="main">
			{% block content %}{% endblock %}
		</main>
		<section class="r-sidebar">
			{% include "../partials/navigation.swig" %}
		</section>
	</div>

	{% include "../partials/javascript.swig" %}
</body>
</html>

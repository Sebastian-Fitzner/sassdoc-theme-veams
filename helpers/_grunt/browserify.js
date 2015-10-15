var libs = [
	'jquery',
	'exoskeleton',
	'handlebars'
];

module.exports = {
	options: {
		transform: [
			[
				"babelify", {
				"stage": 0
			}
			]
		],
		external: [
			'underscore'
		]
	},
	dev: {
		options: {
			browserifyOptions: {
				debug: true
			},
			watch: true
		},
		files: {
			'<%= paths.dev %>/js/main.js': '<%= paths.src %>/js/main.js'
		}
	},
	dist: {
		files: {
			'<%= paths.dev %>/js/main.js': '<%= paths.src %>/js/main.js'
		}
	}
};
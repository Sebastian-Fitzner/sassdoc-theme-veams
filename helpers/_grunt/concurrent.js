module.exports = {
	syncing: {
		tasks: [
			'sync'
		],
		options: {
			logConcurrentOutput: true
		}
	},
	hintAndDocs: {
		tasks: [
			'jshint'
		],
		options: {
			logConcurrentOutput: true,
			limit: 5
		}
	}
};
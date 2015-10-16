// Main Requirements
import App from './app';
import Helpers from './utils/helpers';
var HLJS = require('highlight.js');

var $ = App.$;

// ES6 Modules
import ButtonInit from './modules/button/button-init';
import Toggler from './modules/toggler/toggler';
import Declaration from './modules/declaration/declaration';

"use strict";

// Main Functionality
class Core {
	constructor() {
		this.initialize();
	}

	/**
	 * Initialize our core functionality
	 * This function will only be executed once.
	 */
	initialize() {
		console.log('App initialized with version: ', App.version);

		/**
		 * Set (no-)touch class
		 */
		if (!App.support.touch) {
			$('html').addClass('no-touch');
		}
	}

	render(context) {

		// I am lazy ...
		$('pre code', context).each(function (i, block) {
			HLJS.highlightBlock(block);
		});

		/**
		 * Init Buttons
		 */
		Helpers.loadModule({
			el: '[data-js-module="button"]',
			Module: ButtonInit,
			context: context
		});

		/**
		 * Init Toggle
		 */
		Helpers.loadModule({
			el: '[data-js-module="toggler"]',
			Module: Toggler,
			context: context
		});

		/**
		 * Init Declaration Handling
		 */
		Helpers.loadModule({
			el: '[data-js-module="declaration"]',
			Module: Declaration,
			context: context
		});
	}
}

document.addEventListener("DOMContentLoaded", function () {
	var core = new Core();

	/**
	 * Render modules
	 */
	core.render();

	/**
	 * Initialize modules which are loaded after initial load
	 * via custom event 'DOMchanged'
	 */
	App.Vent.on(App.Events.DOMchanged, (context) => {
		Helpers.querySelectorArray(context).forEach((itemContext) => {
			console.log('Dom has changed. Initialising new modules in: ', itemContext);
			core.render(itemContext);
		});
	});
});

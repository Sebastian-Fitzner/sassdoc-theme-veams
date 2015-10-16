/**
 * @module initButton
 *
 * @author Sebastian Fitzner
 */

import App from '../../app';
import AppModule from '../_global/module';

var $ = App.$;

class Declaration extends AppModule {
	/**
	 * Constructor fn for our class
	 *
	 * @see moduleView.js
	 *
	 * @param {obj} obj - Object which is passed to our class
	 * @param {obj.el} obj - element which will be saved in this.el
	 * @param {obj.options} obj - options which will be passed in as JSON object
	 */
	constructor(obj) {
		var options = {
			openClass: 'is-open',
			declarationButton: '[data-js-atom="declaration-btn"]',
			declarationContent: '[data-js-atom="declaration-content"]'
		};
		super(obj, options);
	}

	/**
	 * Initialize class
	 */
	initialize() {
		this.declarationBtn = this.$el.find(this.options.declarationButton);
		this.declarationDataExpanded = this.declarationBtn.data('js-expanded');
		this.declarationDataCollapsed = this.declarationBtn.data('js-collapsed');
		this.declarationContent = this.$el.find(this.options.declarationContent);

		super.initialize();
	}

	bindEvents() {
		this.declarationBtn.on('click', this.toggleContent.bind(this));
	}

	toggleContent() {
		if (this.declarationContent.hasClass(this.options.openClass)) {
			this.declarationContent.removeClass(this.options.openClass);
			this.collapsedContent();
		} else {
			this.declarationContent.addClass(this.options.openClass);
			this.expandedContent();
		}

		App.Vent.trigger(App.Events.DOMchanged, '.' + this.$el.attr('class'));
	}

	collapsedContent() {
		this.declarationContent.html(this.declarationDataCollapsed);

	}

	expandedContent() {
		this.declarationContent.html(this.declarationDataExpanded);
	}
}

export default Declaration;

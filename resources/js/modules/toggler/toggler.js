/**
 * @module initButton
 *
 * @author Sebastian Fitzner
 */

import App from '../../app';
import AppModule from '../_global/module';

var $ = App.$;

class Toggler extends AppModule {
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
			openOnInit: false,
			openClass: 'is-open',
			togglerButton: '[data-js-atom="toggler-button"]',
			togglerContent: '[data-js-atom="toggler-content"]'
		};
		super(obj, options);
	}

	/**
	 * Initialize class
	 */
	initialize() {
		this.togglerBtn = this.$el.find(this.options.togglerButton);
		this.togglerContent = this.$el.find(this.options.togglerContent);

		this.togglerContent.slideUp();

		super.initialize();
	}

	bindEvents() {
		this.togglerBtn.on('click', this.toggleContent.bind(this));
	}

	toggleContent() {
		this.togglerContent.slideToggle().toggleClass(this.options.openClass);
	}

	render() {
	}
}

export default Toggler;

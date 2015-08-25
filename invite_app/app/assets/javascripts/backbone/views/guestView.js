App.Views.Guest = Backbone.View.extend({
	tagName: 'div',
	className: 'guest',
	initialize: function () {
		console.log('guest view');
		this.template = HandlebarsTemplates['guest'];
		this.render();
	},
	render: function(){
		console.log(' Guest RENDER WAS CALLED!');
		this.$el.html(this.template(this.model.toJSON()));

		$('body').append(this.$el);

	}
});
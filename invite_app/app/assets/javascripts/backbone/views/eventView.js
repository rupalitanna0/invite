App.Views.Event = Backbone.View.extend({
	tagName: 'section',
	className: 'events',
	initialize: function () {
		console.log('event view');
		this.template = HandlebarsTemplates['event'];
		this.render();
	},
	render: function(){
		console.log('RENDER WAS CALLED!');
		this.$el.html(this.template(this.model.toJSON()));
		$('#events').append(this.$el);

	}
});

App.Views.Phtotogallery = Backbone.View.extend({
	tagName: 'section',
	className: 'photogallery',
	initialize: function () {
		console.log('photogallery view');
		this.template = HandlebarsTemplates['photogallery'];
		this.render();
	},
	render: function(){
		console.log('RENDER WAS CALLED!');
		this.$el.html(this.template(this.model.toJSON()));

		$("#gallery").append(this.$el);

	}
});
App.Views.Photogallery = Backbone.View.extend({
	el: '#gallery',
	initialize: function(){
		console.log('new collection Photogallery view created');
		this.listenTo(this.collection, 'reset', this.addAll);
		this.collection.fetch({reset: true})
	},
	addAll: function(){
		this.collection.each(this.addgallery, this);

	},
	addgallery: function(Photogallery) {
		var article = new App.Views.Phtotogallery({ model: Photogallery});
		 this.$('#gallery').append(article.el)
	},
	events: {
		'click': 'galleryfetch'
	},
	galleryfetch: function() {
		console.log("done");
		this.collection.fetch({reset: true})
	}
	

})
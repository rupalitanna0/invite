App.Views.Guest = Backbone.View.extend({
	el: '#guest',
	initialize: function(){
		console.log('new collection guest view created');
		this.listenTo(this.collection, 'reset', this.addAll);
		this.collection.fetch({reset: true})
	},
	addAll: function(){
		this.collection.each(this.addguest, this);

	},
	addguest: function(Guest) {
		var article = new App.Views.Phtotogallery({ model: Guest});
		this.$("#guest").append(article.el)
	},
	events: {
		'click': 'guestfetch'
	},
	guestfetch: function() {
		console.log("done");
		this.collection.fetch({reset: true})
	}
	

})
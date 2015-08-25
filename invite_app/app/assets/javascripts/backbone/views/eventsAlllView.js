App.Views.Event = Backbone.View.extend({
	el: '#events',
	initialize: function(){
		console.log('new collection event view created');
		this.listenTo(this.collection, 'reset', this.addAll);
		this.collection.fetch({reset: true});
		},
	addAll: function(){
		this.collection.each(this.addevent, this);

	},
	addevent: function(eventmodel) {
		var article = new App.Views.Event({ model: eventmodel});
		this.$('#events').append(article.el)
	},
	events: {
		'click': 'eventfetch'

	},
	eventfetch: function() {
		console.log("done");
		this.collection.fetch({reset: true})
	}
	

})
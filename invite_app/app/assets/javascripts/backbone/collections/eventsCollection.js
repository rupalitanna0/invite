App.Collections.EventsCollection = Backbone.Collection.extend({
	
	initialize: function () {
		console.log('New Collection for events Created');
	},
	url:'/events',
	model: App.Models.Event

});
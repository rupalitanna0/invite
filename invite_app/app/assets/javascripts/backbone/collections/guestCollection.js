App.Collections.GuestsCollection = Backbone.Collection.extend({
	
	initialize: function () {
		console.log('New Collection for Guest Created');
	},
	url:'users/guest',
	model: App.Models.Guest

});
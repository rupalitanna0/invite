App.Collections.PhotogalleryCollection = Backbone.Collection.extend({
	
	initialize: function () {
		console.log('New Collection for photogallery Created');
	},
	url:'/photogalleries',
	model: App.Models.Photogallery

});
var app = app || {};

app.Bookmarks = Backbone.Collection.extend({
	url:'/bookmarks/api',
	model: app.Bookmark	
})


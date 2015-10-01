var app = app || {};

app.Bookmarks = Backbone.Collection.extend({
	url:'/bookmarks/api',
	model: app.Bookmark,
	

	getCurrentUser: function (){
		this.current_user = app.current_user
	}

})


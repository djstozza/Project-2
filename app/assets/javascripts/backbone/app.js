$(document).ready(function(){

	app.categories = new app.Categories()
	app.bookmarks = new app.Bookmarks()


	app.categories.fetch().done(function(){
		app.bookmarks.fetch().done(function(){
			app.router = new app.Router();
			Backbone.history.start({pushState: true})
			console.log('finished fetching and making new router')	
		})
	})
})
$(document).ready(function(){

	_.templateSettings = {
	    evaluate : /\{\[([\s\S]+?)\]\}/g,     // {[ console.log("Hello"); ]} - runs
	    interpolate : /\{\{([\s\S]+?)\}\}/g   // {{ key }} - interpolates
	};

	app.categories = new app.Categories()
	app.bookmarks = new app.Bookmarks()
	app.items = new app.Items()


	app.categories.fetch().done(function(){
		app.bookmarks.fetch().done(function(){
			app.items.fetch().done(function(){

							debugger;
				app.bookmarks.each(function(bookmark){
					bookmark.getItems();
				})


				// app.items.each(function(item){
				// 	item.getBookmarks();
				// })

				app.router = new app.Router();
				Backbone.history.start({pushState: true})


				
		
			})
		})
	})
})
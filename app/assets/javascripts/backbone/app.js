$(document).ready(function(){

	_.templateSettings = {
	    evaluate : /\{\[([\s\S]+?)\]\}/g,     // {[ console.log("Hello"); ]} - runs
	    interpolate : /\{\{([\s\S]+?)\}\}/g   // {{ key }} - interpolates
	};

	app.categories = new app.Categories()
	app.bookmarks = new app.Bookmarks()
	app.items = new app.Items()
	app.current_user = new app.UserSession()
	app.inboxes = new app.Inboxes();

	app.categories.fetch().done(function(){
		app.bookmarks.fetch().done(function(){
			app.items.fetch().done(function(){
				app.current_user.fetch().done(function(){
					
					app.inboxes.getCurrentUser();
					app.bookmarks.getCurrentUser();

					// app.bookmarks.each(function(bookmark){
					// 	bookmark.getItems();
					// })

					app.items.each(function(item){
						item.getBookmarks();
					})

					app.router = new app.Router();
					Backbone.history.start({pushState: true})
			
				})
			})
		})
	})
})
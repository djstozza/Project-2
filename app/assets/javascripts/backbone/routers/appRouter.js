var app = app || {}

app.Router = Backbone.Router.extend({
	routes: {
		'bookmarks' : 'index'
	},

	index: function () {
		var appView = new app.AppView({
			collection: app.bookmarks
		})
		appView.render()

	}


})
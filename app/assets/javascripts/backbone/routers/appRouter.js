var app = app || {}

app.Router = Backbone.Router.extend({
	routes: {
		'bookmarks' : 'index'
	},

	index: function () {
		console.log('called index function in routes')
		var appView = new app.AppView({
			collection: app.bookmarks
		})
		console.log('this is the appView', appView)
		appView.render()

	}
})
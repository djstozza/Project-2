var app = app || {}

app.Router = Backbone.Router.extend({
	routes: {
		'bookmarks' : 'index',
		''	: 'gotMail'
	},

	index: function () {
		var appView = new app.AppView({
			collection: app.items,

		})
		appView.render()

	},

	gotMail: function () {
		var mailPing = new app.PingView({
			
		})
	}


})
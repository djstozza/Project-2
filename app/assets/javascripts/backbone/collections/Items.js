var app = app || {}

app.Items = Backbone.Collection.extend({
	url: '/items/api',
	model: app.Item
})
var app = app || {};

app.Categories = Backbone.Collection.extend({
	url: "/categories/api",
	model: app.Category
})
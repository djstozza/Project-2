var app = app || {};

app.Categories = Backbone.Collection.extend({
	url: "/categories/api",
	model: app.Category,
	initialize: function () {
		this.on("add", function () {

		}, this);
		this.on("remove", function () {

		}, this);
	}
})
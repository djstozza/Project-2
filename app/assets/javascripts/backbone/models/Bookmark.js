var app = app || {};

app.Bookmark = Backbone.Model.extend({
	urlRoot: '/bookmarks/api',

	getItems: function () {
		this.item = app.items.where('item_id', this)
	}


})
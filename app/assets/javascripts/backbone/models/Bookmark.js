var app = app || {};

app.Bookmark = Backbone.Model.extend({
	urlRoot: '/bookmarks/api',

	initialize: function () {
		this.item = app.items.find(this.get('item_id'))
	}


})
var app = app || {}

app.Item = Backbone.Model.extend({
	urlRoot: '/items',

	getBookmarks: function () {
		this.bookmark = app.bookmarks.where('item_id', this.id) 
	}
})
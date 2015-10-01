var app = app || {}

app.Inboxes = Backbone.Collection.extend({
	url: '/mailbox/api',
	model: app.Inbox,

	getCurrentUser: function () {
		this.current_user = app.current_user;
	}
})
var app = app || {};

app.PingView = Backbone.View.extend({
	el: ".label-danger",
	render: function () {
		var html = _.template($('#PingViewTemplate').html(), {
			model : mail
		});
		this.$el.html(html);
	}
});
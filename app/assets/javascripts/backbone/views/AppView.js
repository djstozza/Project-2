var app = app || {};

app.AppView = Backbone.View.extend({
	el: '#main',

	render: function() {
		debugger;
		var html = $('#appViewTemp').html()
		this.$el.html(html)
		this.collection.each(function(mark){
			var catName = mark.attributes.name
			$('#main').prepend("<h4>" + catName + "</h4>")
		})

	}
})
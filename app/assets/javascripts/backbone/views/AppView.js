var app = app || {};

app.AppView = Backbone.View.extend({
	el: '#main',

	render: function() {
		
		var html = $('#appViewTemp').html()
		this.$el.html(html)
		this.collection.each(function(item){
			// item.
			// $('#main').prepend("<h4>" + catName + "</h4>")
		})

	}
})
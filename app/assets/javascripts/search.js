$(document).ready(function (){
	console.log('autocomplete doc')
	$('#search').autocomplete({
		source: "/items/autocomplete",
		minLength: 2
	});
})
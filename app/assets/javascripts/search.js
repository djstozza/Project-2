$(document).ready(function (){
	$('#search').autocomplete({
		source: "/items/autocomplete",
		minLength: 2
	});
})
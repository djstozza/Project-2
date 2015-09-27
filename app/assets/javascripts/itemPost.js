$(document).ready(function () {
	$('#item_subcategory_id option').hide();
	$('#item_category_id').on('change', function () {
		//Only occurs when there is a change in the form i.e. when an option is clicked
		var category = $(this).find(':selected').text();
		$('#item_subcategory_id option').show();
		$('#item_subcategory_id option').each(function () {
			var $this = $(this);
			if ($this.text().startsWith(category + ':')) {
				$this.show();
			} else {
				$this.hide();
			}
		});
		if ( (category == 'community') || (category == 'personals') || (category == 'housing')){
			$('#exampleInputPrice3').hide();
		} else {
			$('#exampleInputPrice3').show();
		}
	});

	$('#housing').hide();
	$('#item_category_id').on('change', function () {
		var category = $(this).find(':selected').text();
		if (category === 'housing') {
			$('#housing').show();
		} else {
			$('#housing').hide();
		}
	});
});
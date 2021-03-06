$(document).ready(function () {
	$('#wish_subcategory_id option').hide();
	$('#wish_category_id').on('change', function () {
		//Only occurs when there is a change in the form i.e. when an option is clicked
		var category = $(this).find(':selected').text();
		$('#wish_subcategory_id option').show();
		$('#wish_subcategory_id option').each(function () {
			var $this = $(this);
			if ($this.text().startsWith(category + ':')) {
				$this.show();
				$('')
			} else {
				$this.hide();
			}
		});
	});
});






var getHousing = function () {
	$('#housing').hide();
	$('#item_subcategory_id').on('change', function () {
		var subcategory = $(this).find(':selected').text();
		if (subcategory.startsWith('housing:')) {
			$('#housing').show();
		};

		if (subcategory === 'housing: rooms / shared') {
			$('div#housing_description.row').show();
			$('div#housing_checkboxes.row').show();
			$('div#shared').show();
			$('div#openhouse.row').hide();
			$('div#housing_type').hide();
			$('#rent').show();
			$('#sale').hide();
		};

		if (subcategory === 'housing: parking / storage' || subcategory === 'housing: office / commercial') {
			$('div#housing_description.row').hide();
			$('div#housing_checkboxes.row').hide();
			$('div#housing_general.row').hide();
			$('div#openhouse.row').hide();
			$('#rent').show();
			$('#sale').hide();
		};

		if (subcategory === 'housing: real estate for sale') {
			$('div#housing_general.row').show();
			$('#rent').hide();
			$('#sale').show();
			$('div#housing_description.row').show();
			$('div#housing_type').show();
			$('div#housing_checkboxes.row').show();
			$('div#shared').hide();
			$('div#openhouse.row').show();
		}


		if (subcategory === 'housing: apts / housing') {
			$('div#housing_general.row').show();
			$('#rent').show();
			$('#sale').hide();
			$('div#housing_description.row').show();
			$('div#housing_type').show();
			$('div#housing_checkboxes.row').show();
			$('div#shared').hide();
			$('div#openhouse.row').show();
		}

		if (subcategory === 'housing: vacation rentals') {
			$('#rent').show();
			$('#sale').hide();
			$('div#housing_general.row').show();
			$('div#housing_description.row').show();
			$('div#housing_type').show();
			$('div#housing_checkboxes.row').show();
			$('div#shared').hide();
			$('div#openhouse.row').hide();
		}

		if (subcategory === 'housing: housing swap') {
			$('div#housing_description.row').show();
			$('div#housing_checkboxes.row').show();
			$('div#housing_general.row').show();
			$('div#shared').hide();
			$('div#openhouse.row').hide();
			$('div#housing_type').show();
			$('#rent').show();
			$('#sale').hide();
		};

		if (subcategory === 'housing: sublets / temporary') {
			$('div#housing_description.row').show();
			$('div#housing_checkboxes.row').show();
			$('div#shared').show();
			$('div#openhouse.row').show();
			$('div#housing_type').show();
			$('#rent').show();
			$('#sale').hide();
		}

	});
};

$(document).ready(function () {
	_.each($('span#show'), function(params) {
		if($(params).text().endsWith(" ")) {
	  		$(params).hide();
	  	}
	});

	

	$('#item_subcategory_id option').hide();

	$('#item_category_id').on('change', function () {



		//Only occurs when there is a change in the form i.e. when an option is clicked
		// $('#item_subcategory_id option').housing_description();
		var category = $(this).find(':selected').text();
		$('#item_subcategory_id option').show();
		$('#item_subcategory_id option').each(function () {
			var $this = $(this);
			if ($this.text().startsWith(category + ':')) {
				$this.show();
			} else {
				$this.hide();
			}
			
			if ( $this.text() === "" || $this.val() === "" ) {
				$this.show();
				$this.parent().val(0);
				if ($this.parent().val(0)) {
					$('#housing').hide();
				}
			}
		});
		if ( (category == 'community') || (category == 'personals') || (category == 'housing')){
			$('#price').hide();
		} else {
			$('#price').show();
		}
	});
	getHousing();

	
});
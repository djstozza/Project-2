var categoryAndSubcategorySwitch = function () {
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
					$('#jobs').hide();
					$('div#for_sale').hide();
				}
			}
		});
	});
};



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
			$('div#housing.row').hide();
			$('div#openhouse.row').hide();
			$('#rent').show();
			$('#sale').hide();
		};

		if (subcategory === 'housing: real estate for sale') {
			$('div#housing.row').show();
			$('#rent').hide();
			$('#sale').show();
			$('div#housing_description.row').show();
			$('div#housing_type').show();
			$('div#housing_checkboxes.row').show();
			$('div#shared').hide();
			$('div#openhouse.row').show();
		}


		if (subcategory === 'housing: apts / housing') {
			$('div#housing.row').show();
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
			$('div#housing.row').show();
			$('div#housing_description.row').show();
			$('div#housing_type').show();
			$('div#housing_checkboxes.row').show();
			$('div#shared').hide();
			$('div#openhouse.row').hide();
		}

		if (subcategory === 'housing: housing swap') {
			$('div#housing_description.row').show();
			$('div#housing_checkboxes.row').show();
			$('div#housing.row').show();
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

var getJobs = function () {
	$('#jobs').hide();
	$('#item_subcategory_id').on('change', function () {
		var subcategory = $(this).find(':selected').text();
		if (subcategory.startsWith('jobs:')) {
			$('#jobs').show();
		};
	});
	
};

var getForSale = function () {
	$('#for_sale').hide();
	$('#item_subcategory_id').on('change', function () {
		var subcategory = $(this).find(':selected').text();
		if (subcategory.startsWith('for sale:')) {
			$('#for_sale').show();
		

			if (subcategory !== 'for sale: barter' || subcategory !== 'for sale: bicycle' || subcategory !== 'for sale: boats' || subcategory !== 'for sale: books & magazines' || subcategory !== 'for sale: mobile phones' || subcategory !== 'for sale: garage sale' || subcategory !== 'for sale: cars+trucks' || subcategory !== 'for sale: tickets' || subcategory !== 'for sale: rvs+camp' || subcategory !== 'for sale: cds/dvd/vhs') {
				$('div.general').show();
				$('div.normal').show();
				$('div.dimensions').show();
				$('div#general').show();
				$('div#boat').hide();
				$('div.car').hide();
				$('div#car').hide()
				$('div.carbike').hide();
				$('div#bike').hide();
				$('div#media').hide();
				$('div#mobile').hide();
				$('div.event').hide();
				$('div.garage').hide();
				$('div#motorbike').hide();

			};

			if (subcategory === 'for sale: cars+trucks' || subcategory === 'for sale: rvs+camp') {
				$('div.general').show();
				$('div#general').show();
				$('div.normal').show();
				$('div.dimensions').hide();
				$('div.car').show();
				$('div.carbike').show();
				$('div#car').show();
				$('div#boat').hide();
				$('div#bike').hide();
				$('div#media').hide();
				$('div#mobile').hide();
				$('div.event').hide();
				$('div.garage').hide();
				$('div#motorbike').hide();
			};

			if (subcategory === 'for sale: motorcycles') {
				$('div.general').show();
				$('div.normal').show();
				$('div.dimensions').hide();
				$('div#general').show();
				$('div#motorbike').show();
				$('div.carbike').show();
				$('div.car').hide();
				$('div#boat').hide();
				$('div#bike').hide();
				$('div#media').hide();
				$('div#mobile').hide();
				$('div.event').hide();
				$('div.garage').hide();
			};

			if (subcategory === 'for sale: barter') {
				$('#for_sale').hide();
				$('div.normal').hide();
				$('div.general').hide();
				$('div#general').hide();
				$('div#motorbike').hide();
				$('div.dimensions').hide();
				$('div.carbike').hide();
				$('div.car').hide();
				$('div#boat').hide();
				$('div#bike').hide();
				$('div#media').hide();
				$('div#mobile').hide();
				$('div.event').hide();
				$('div.garage').hide();
			};


			if (subcategory === 'for sale: mobile phones') {
				$('div.normal').show();
				$('div.general').show();
				$('div#general').show();
				$('div.dimensions').show();
				$('div#mobile').show();
				$('div#motorbike').hide();
				$('div.carbike').hide();
				$('div.car').hide();
				$('div#boat').hide();
				$('div#bike').hide();
				$('div#media').hide();
				$('div.event').hide();
				$('div.garage').hide();
			};

			if (subcategory === 'for sale: books & magazines') {
				$('div.normal').hide();
				$('div.dimensions').show();
				$('div.general').show();
				$('div#general').show();
				$('div#mobile').hide();
				$('div#motorbike').hide();
				$('div.carbike').hide();
				$('div.car').hide();
				$('div#boat').hide();
				$('div#bike').hide();
				$('div#media').hide();
				$('div.event').hide();
				$('div.garage').hide();
			};

			if (subcategory === 'for sale: boats') {
				$('div.normal').show();
				$('div.dimensions').hide();
				$('div.general').show();
				$('div#general').show();
				$('div#mobile').hide();
				$('div#motorbike').hide();
				$('div.carbike').hide();
				$('div.car').hide();
				$('div#boat').show();
				$('div#bike').hide();
				$('div#media').hide();
				$('div.event').hide();
				$('div.garage').hide();
			};

			if (subcategory === 'for sale: garage sale') {
				$('#for_sale').hide();
				$('div.normal').hide();
				$('div.dimensions').hide();
				$('div.general').hide();
				$('div#general').hide();
				$('div#mobile').hide();
				$('div#motorbike').hide();
				$('div.carbike').hide();
				$('div.car').hide();
				$('div#boat').hide();
				$('div#bike').hide();
				$('div#media').hide();
				$('div.event').hide();
				$('div.garage').show();
			};

			if (subcategory === 'for sale: tickets') {
				$('div.normal').hide();
				$('div.dimensions').hide();
				$('div.general').hide();
				$('div#general').hide();
				$('div#mobile').hide();
				$('div#motorbike').hide();
				$('div.carbike').hide();
				$('div.car').hide();
				$('div#boat').hide();
				$('div#bike').hide();
				$('div#media').hide();
				$('div.event').show();
				$('div.garage').hide();
			};

			if (subcategory === 'for sale: cds/dvd/vhs') {
				$('div.normal').hide();
				$('div.dimensions').hide();
				$('div.general').show();
				$('div#general').hide();
				$('div#mobile').hide();
				$('div#motorbike').hide();
				$('div.carbike').hide();
				$('div.car').hide();
				$('div#boat').hide();
				$('div#bike').hide();
				$('div#media').show();
				$('div.event').hide();
				$('div.garage').hide();
			};
		}

	});

	
};




var customiseItemShowPage = function () {
	//goes through each span with the id of show in item/show and hides the ones that have no value i.e. end in " ". This customises the information that is shown
	_.each($('span#show'), function(params) {
		if($(params).text().endsWith(" ")) {
	  		$(params).hide();
	  	}
	});
};



$(document).ready(function () {
	categoryAndSubcategorySwitch();

	getHousing();
	getJobs();
	getForSale();
	customiseItemShowPage();

	$("#new_bookmark").submit(function(event){ 
    	$.ajax({
	        type: "DELETE",
	        url: "/wishes/" + $('#wishID').text().match(/\d/)[0] ,
	        dataType: "json",
	        data: {"_method":"delete"},
	        complete: function() {
            
            	console.log("Deleted successfully");
        	}
    	});
    });
	

});
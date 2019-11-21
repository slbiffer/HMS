$(document).ready(function() {
		
/* this function only allow letters */
		jQuery.validator.addMethod("lettersonly", function(value, element) {
			return this.optional(element) || /^[a-z]+$/i.test(value);
		}, "Letters only please");
		
/* this part validate the form */
		$('#Add_Main_Types').validate({
			rules : {
				mainId : {
					lettersonly: true,
					required : true,
					minlength : 4,
					maxlength : 14

				}
			}

		});

	});
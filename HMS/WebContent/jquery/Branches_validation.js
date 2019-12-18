$(document).ready(function() {

	/* this function only allow letters */
	jQuery.validator.addMethod("lettersonly", function(value, element) {
		return this.optional(element) || /^[a-z]+$/i.test(value);
	}, "Letters only please");

	/* this part validate the form */
	$('#Add_Main_Types').validate({
		b_name : {
			mainName : {
				lettersonly : true,
				required : true,
				minlength : 2,
				maxlength : 14

			},
			mainAddr : {
				//lettersonly : true,
				required : true,
				minlength : 2,
				maxlength : 14

			}
		}

	});

});
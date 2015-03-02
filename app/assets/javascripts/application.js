// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require twitter/bootstrap
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require_tree .


function how_meet() {
	if( ($('#how_meet_select').val() == "PACIENTE: ") || ($('#how_meet_select').val() == "DOCTOR: " ) || ($('#how_meet_select').val() == "OTRO: ") ) {
		$('#registration_how_meet').show();
		$('#how_meet_tag').show();
		$('#user_how_meet').val($('#how_meet_select').val().concat($('#registration_how_meet').val()));
	} else {
		$('#registration_how_meet').hide(); 
		$('#how_meet_tag').hide(); 
		$('#user_how_meet').val($('#how_meet_select').val());
	}
}

function half_vegetarian() {
	if( $('#registration_half_vegetarian').prop('checked') ) {
		$('#user_pork').attr('disabled', false);
		$('#user_meat').attr('disabled', false);
		$('#user_chicken').attr('disabled', false);
		$('#user_fish').attr('disabled', false);
	} else {
		$('#user_pork').attr('disabled', true);
		$('#user_pork').prop('checked', true);
		$('#user_meat').attr('disabled', true);
		$('#user_meat').prop('checked', true);
		$('#user_chicken').attr('disabled', true);
		$('#user_chicken').prop('checked', true);
		$('#user_fish').attr('disabled', true);
		$('#user_fish').prop('checked', true);
	}      
}
function cancer() {
	if( $('#user_cancer').prop('checked') ) {
		$('#user_cancer_type').show();
		$('#cancer_type_label').show();
	} else {
		$('#user_cancer_type').hide();
		$('#cancer_type_label').hide();
		$('#user_cancer_type').val("");
	}      
}
function smoker() {
	if( $('#user_smoker').prop('checked') ) {
		$('#user_smoker_amount').show();
		$('#smoker_amount_label').show();
	} else {
		$('#user_smoker_amount').hide();
		$('#smoker_amount_label').hide();
		$('#user_smoker_amount').val("");
	}      
}
function allergies() {
	if( $('#allergies_true').val() == "SI") {
		$('#user_allergies').show();
		$('#user_allergies_label').show();
	} else {
		$('#user_allergies').hide();
		$('#user_allergies_label').hide();
		$('#user_allergies').val("");
	}      
}

$(document).on("ready page:change", function() {
	how_meet();
	allergies();
	cancer();
	smoker();
	half_vegetarian();
	$('#how_meet_select').change(function () {how_meet();});
	$('#registration_how_meet').change(function () {how_meet();});
	$('#allergies_true').change(function () {allergies();});
	$('#user_cancer').bind('change',function () {cancer();});
	$('#user_smoker').bind('change',function () {smoker();});
	$('#registration_half_vegetarian').bind('change',function () {half_vegetarian();});


});
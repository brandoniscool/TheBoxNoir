// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function(){
	$('#new_waitlist')
	.bind('ajax:success', function(event, data, status, xhr) {
		$("#turn-one").fadeOut(function(){
			$("#turn-two").fadeIn();
		});
	})
	.bind("ajax:error", function (xhr, status, error) {
	    alert('You have already reserved a box!');
	});
});
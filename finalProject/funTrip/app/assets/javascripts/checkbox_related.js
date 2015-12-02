// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on ("ready",function(){
	var myData = [
		{id: 1, label: "Restaurants" }, 
		{id: 2, label: "Night Life" },
		{id: 3, label: "Nature" },
		{id: 4, label: "museums" },
		{id: 5, label: "fun for fids" },
		{id: 6, label: "beaches" },
	];
	$(".myDropdownCheckbox").dropdownCheckbox({
	  data: myData,
	  title: "Wish do List"
	});


	// $(".fun-button").on("click", function(event) {
 //        alert("hello")
 //    });	
});


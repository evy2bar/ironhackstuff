// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on ("ready",function() {
   // $('body').attr('style', "background-image: url('/assets/road-mountains.jpeg');");

	$(".fun-button").on("click", function(event) {

		var from = $(".start-point").val();
		var to = $(".end-point").val();


        if (!from || !to)  {
            alert("There are empty fields!");
            return;
        }

		var radius = $("#radius-selector").val();
		localStorage.setItem("startpoint", from);
		localStorage.setItem("endpoint", to);
		localStorage.setItem("radius", radius);

       var mode = $("#mode").val();
        localStorage.setItem("mode", mode);


       var selected = $(".myDropdownCheckbox").dropdownCheckbox("checked");
        localStorage.setItem("wish_do_list",selected);


        window.location.href="/map";
    });
});


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

		radius = $("#radius-selector").val();
		localStorage.setItem("startpoint", from);
		localStorage.setItem("endpoint", to);
		localStorage.setItem("radius", radius);


        window.location.href="/map";
    });

    //$("#radius-selector").

});


// 


$(document).on("ready", function(){

	$(".js-button").on("click", function(){
		alert("you clicked me!!!!");
	});





$(".js-input").on("keypress", function(){
	var text = $(".js-input").val();
	console.log("current text: "+ text);
});



$(".js-text-input").on("keypress", function(){
	var inputText = $(".js-text-input").val();
	$(".js-preview").text(inputText);
});
$(".js-dropdown").on("change", function(){
	var text = $(".js-dropdown").val();
	console.log("current DROPDOWN SELECTION: "+ text);
});


$(".js-button-fades").on("click", function(){	    // *:not('') le dice al codigo que no incluya el boton con id choco en el fading
	$ (".container *:not('#choco')").fadeToggle();   // si quiero que el boton se quede en el mismo lugar
									// agrego un css donde le cambie la propiedad al conteiner para hidden o visibility	
});									//  y a cambio de llamar.fadeToggle pongo el nombre de la clase.

$(".js-button-color").on("click", function(){
	$ (".container").toggleClass("unicorn");   //si queiro que me cambie el boton solamente le cambio la clase container por la del boton.
});             // agregue un file de css para este efecto de color, con una clase .unicorn .

});

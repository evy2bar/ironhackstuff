$(document).on("ready", function(){

	$(".js-show-characters").on("click", function(){
		alert("CLICK");
		getCharacters();
		
	});
 
	function getCharacters(){

		$.ajax({
			url: "https://ironhack-characters.herokuapp.com/characters",
			success:function(characters_info){
				$(".js-characters-wraper ul").empty();
				var tenCharacters = characters_info.slice(-10);
				tenCharacters.forEach(function(character){
					console.log(character)
					var liHtml = "\
					<li>\
					" + character.name + "\
					<em>" + "-- " + character.occupation + "</em>\
					<span>" + "-- " + character.weapon + "</span>\
					</li>";
					$(".js-characters-wraper ul").append(liHtml);

					

				});
				
			},
			error: function(){
				alert("error")
			},
			dataType: "json"

		});
	}
	// $(".js-create-characters").on("click", function(){
	// 	var newCharacter = {
	// 		name: "IceCreamerrr",
	// 		occupation: "Snowball Shooter", 
	// 		weapon: "Abbamama"

	// 	}
	// 	$.ajax({
	// 		type: "POST",
	// 		url: "https://ironhack-characters.herokuapp.com/characters",
	// 		data: newCharacter,
	// 		success: function(){
	// 			alert("good job")
	// 		},
	// 		error: function(){
	// 			alert("not created")
	// 		},
	// 		dataType: "json"

	// 	});
		
	// });

	$(".js-characters").on("click", function(){
    	if (!$(".js-name").val() || !$(".js-occu").val() || !$(".js-weapon").val()) {
    		alert("There are empty fields!");
    		return;
    	}
	    var newCharacterByUser = {
	       name: $(".js-name").val(),
	       occupation: $(".js-occu").val(),
	       weapon: $(".js-weapon").val(),
	    }

    	$.ajax({
    		type: "POST",
			url: "https://ironhack-characters.herokuapp.com/characters",
			data: newCharacterByUser,
			success: onAddCharacter,
			error: function(){
				alert("not created")
			},
			dataType: "json"

		});
	});

	function onAddCharacter(character){
	 	$(".js-name").val("");
	 	$(".js-occu").val("");
	 	$(".js-weapon").val("");
		getCharacters();
	}

});
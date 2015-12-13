
// //==============DEFINITONS============
// function gotPosition (currentPos){

// 		var latText = "Latitude: " + currentPos.coords.latitude;
// 		var longText = "Longitude: " + currentPos.coords.longitude;

// 		$(".js-lat").text(latText)
// 		$(".js-long").text(longText)
	    
// 	    $(".js-coordinates").fadeIn(2000);
// 	    $(".js-wait-text").fadeOut(2000);

// }


// function positionError (){
// 	$(".js-wait-text").fadeOut(2000);
// 	$(".js-error").fadeIn(2000);
// }
// //============APLICATION CODE================

// $(document).on("ready", function(){
// if ("geolocation" in navigator){
	
// 	navigator.geolocation.getCurrentPosition(gotPosition, positionError);
// }
// else{
// 	alert("nope")
// }
// });
$(document).on("ready", function(){
if ("geolocation" in navigator) {
  var button = document.getElementById('where-am-i');
  button.addEventListener('click', getLocation);
} else {
  alert("Geolocation is not available")
}

function getLocation() {
  console.log('Getting location...'); 
  navigator.geolocation.getCurrentPosition(onLocation, onError, options);
}

var options = {
  enableHighAccuracy: true,
  timeout: 5000,
  maximumAge: 0
};

function onLocation (position) {
  console.log("Got it!");
  var lat = position.coords.latitude;
  var lon = position.coords.longitude;
  document.getElementById('location').innerHTML = "Your posititon is " + lat + " latitude and " + lon + " longitude.";
  displayMap(lat, lon);
}

function onError(error) {
	console.log(error);  //this way allows me to get more specific info of the error
  	console.log("Getting location failed: " + error); //if printing an object with con.log, can't be concatenated with a string, becuase it treats the error(object) as a string.
}

function displayMap(lat, lon) {
  var urlRoot = "https://maps.googleapis.com/maps/api/staticmap?center=";
  var urlParams = "&zoom=13&size=400x300";
  var url = urlRoot + lat + "," + lon + urlParams;
  var map = document.getElementById('map');
  map.setAttribute("src", url);
  console.log(url);
}

});
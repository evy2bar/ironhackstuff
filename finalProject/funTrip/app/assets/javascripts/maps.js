$(document).on ("ready",function(){

	var map;
function initMap() {

  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -34.397, lng: 150.644},
    zoom: 8
  });
}

initMap();

  var from = localStorage.getItem("startpoint");
  var to = localStorage.getItem("endpoint");
  var radius = localStorage.getItem("radius");

  console.log("hfdgj", from, to, radius);


var geocoder = new google.maps.Geocoder();

function geocodeAddress(geocoder, resultsMap) {
  var address = from;
  geocoder.geocode({'address': address}, function(results, status) {
    if (status === google.maps.GeocoderStatus.OK) {
      resultsMap.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
        map: resultsMap,
        position: results[0].geometry.location
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}

geocodeAddress(geocoder, map)




});
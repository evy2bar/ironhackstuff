//$(document).on ("ready",function(){
function test (){
    var map;
    var place;
    var geocoder =  new google.maps.Geocoder();
    var from = localStorage.getItem("startpoint");
    var to = localStorage.getItem("endpoint");
    var radius = localStorage.getItem("radius");
    var directionsDisplay;
    var directionsService = new google.maps.DirectionsService();
    var  mode = localStorage.getItem("mode");
    var routes = new google.maps.DirectionsRenderer();



    function initMap() {

        directionsDisplay = new google.maps.DirectionsRenderer;
        map = new google.maps.Map(document.getElementById('map'), {
            zoom: 16,
            center: {lat: 41.85, lng: -87.65}
        });
        directionsDisplay.setMap(map);


        calculateAndDisplayRoute(directionsService,directionsDisplay);

    }

    function calculateAndDisplayRoute(directionsService, directionsDisplay) {

        directionsService.route({

            origin: from,
            destination: to,
            provideRouteAlternatives: true,     //==========================> alternative routes
            travelMode:google.maps.TravelMode[mode]
        }, function(response, status) {
            if (status === google.maps.DirectionsStatus.OK) {
                for (var i = 0, len = response.routes.length; i < len; i++) {
                    new google.maps.DirectionsRenderer({
                        map: map,
                        directions: response,
                        routeIndex: i
                    });

                    directionsDisplay.setDirections(response);

                    var rboxer = new RouteBoxer();
                    var distance = 20; // km

                    // Box the overview path of the first route
                    var path = response.routes[i].overview_path;
                    var boxes = rboxer.box(path, distance);
                    // console.log(boxes.length)
                    for (var j = 0; j < boxes.length; j++) {
                        var bounds = boxes[i];
                        // console.log(bounds)
                    }
                }
            } else {
                window.alert('Directions request failed due to ' + status);
            }
        });
    }


    function convertToMeters(radius){
        return radius * 1609.34;
    }

    initMap();


    var selected = localStorage.getItem("wish_do_list");
    var hash_types = [];
    hash_types['museums'] = ['museum'];
    hash_types['nature'] = ['park', 'campground'];
    hash_types['food'] = ['restaurant', 'food'];
    hash_types['night life'] = ['casino', 'night_club', 'bar', 'movie_theater'];

    function getRelatedInterests(selected) {
        var related = [];
        for (var i = 0; i < selected.length; i++) {
            var aux = hash_types[selected[i]];
            for (var j = 0; j < aux.length; j++) {
                related.push(aux[j]);
            }
        }
        return related;
    }




    geocoder.geocode( { 'address': from}, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            var request = {
                location: results[0].geometry.location,
                radius: convertToMeters(radius),
                types: [getRelatedInterests]
            };

            service = new google.maps.places.PlacesService(map);
            service.nearbySearch(request, callback);

        } else {
            window.alert("Something got wrong " + status);
        }
    });



    geocoder.geocode( { 'address': to}, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            var request = {
                location: results[0].geometry.location,
                radius: convertToMeters(radius),
                types: ['bar']
            };

            service = new google.maps.places.PlacesService(map);
            service.nearbySearch(request, callback);

        } else {
            window.alert("Something got wrong " + status);
        }
    });




    function callback(results, status) {
        if (status == google.maps.places.PlacesServiceStatus.OK) {
            for (var i = 0; i < results.length; i++) {
                place = results[i];

                var marker = new google.maps.Marker({
                    position: place.geometry.location,
                    map: map
                });
                marker.setMap(map);

            }

        }
    }
//});

}
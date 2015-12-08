function repeatingRequest(request) {
    function callback (results, status) {
        console.log("this is results");
        console.log(results)
        console.log("this is the repetingcallback");
        console.log(status);

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
        else if (status == google.maps.places.PlacesServiceStatus.OVER_QUERY_LIMIT) {
            console.log("Over limit, repeating in 1 second", request.location);
            setTimeout(makeMapsRequest, 500);
        }
    }

    function makeMapsRequest () {
        service = new google.maps.places.PlacesService(map);
        service.nearbySearch(request, callback);
    }

    makeMapsRequest();
}

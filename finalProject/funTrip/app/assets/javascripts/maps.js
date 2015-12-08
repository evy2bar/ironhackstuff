function repeatingRequest(request) {
    function callback (results, status) {
        if (status == google.maps.places.PlacesServiceStatus.OK) {
            for (var i = 0; i < results.length; i++) {
                place = results[i];

                var icon = icons[place.types[0]]
                if (icon) {
                    var image = {
                        url: icon.icon
                    };

                    var marker = new google.maps.Marker({
                        icon: image,
                        position: place.geometry.location,
                        animation: google.maps.Animation.DROP,
                        draggable: true,
                        map: map

                    });
                    marker.setMap(map);
                    marker.addListener('click', toggleBounce.bind(null, marker));
                } else {
                    console.log("unrecongnized place type: " + place.types[0]);
                }
            }
        }
        else if (status == google.maps.places.PlacesServiceStatus.OVER_QUERY_LIMIT) {
            setTimeout(makeMapsRequest, 500);
        }
    }

    function makeMapsRequest () {
        service = new google.maps.places.PlacesService(map);
        service.nearbySearch(request, callback);
    }

    makeMapsRequest();
}

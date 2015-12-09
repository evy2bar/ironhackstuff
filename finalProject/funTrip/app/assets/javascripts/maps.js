function repeatingRequest(request) {
    function callback (results, status) {
        if (status == google.maps.places.PlacesServiceStatus.OK) {
            for (var i = 0; i < results.length; i++) {
                place = results[i];
                // WE NEED TO FIX THE CLOSURE ISSUE HERE
                var icon = icons[place.types[0]]
                if (icon && alreadyShown[place.id] === undefined) {
                    alreadyShown[place.id] = true;
                    // createMarker()
                    var image = {
                        url: icon.icon
                    };

                    var marker = new google.maps.Marker({
                        icon: image,
                        position: place.geometry.location,
                        animation: google.maps.Animation.DROP,
                        map: map

                    });
                    marker.setMap(map);
                    marker.addListener('click', toggleBounce.bind(null, marker, place));
                    marker.addListener('mouseover', getinfoWindow)
                    function getinfoWindow(){
                        var infowindow = new google.maps.InfoWindow();
                        infowindow.setContent('<div><strong>' + place.name + '</strong><br>' +
                            place.address + '</div>');
                        infowindow.open(map, this);

                      //  marker.addListener('mouseout', closeInfoWindow.bind(null, this))

                    }

                    //function closeInfoWindow(infowindow){
                    //    console.log("hey")
                    //    infowindow.close(map, infowindow)
                    //}



                } else {

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

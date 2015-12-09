function showMarkers (results) {
    var place, marker;

    for (var i = 0; i < results.length; i++) {
        place = results[i];


        var icon = icons[place.types[0]]
        if (icon && alreadyShown[place.id] === undefined) {
            alreadyShown[place.id] = true;
            var image = {
                url: icon.icon
            };

            marker = new google.maps.Marker({
                icon: image,
                position: place.geometry.location,
                animation: google.maps.Animation.DROP,
                map: map

            });

            marker.setMap(map)
            //marker.addListener('click', toggleBounce.bind(null, marker));
            var callback = markerCallbackBuilder(place, marker);

            marker.addListener('click', callback)

        }
    }
}


function markerCallbackBuilder (place, marker) {
    return function () {
        showInfoWindow(place, marker);
    };

}

var infowindow = new google.maps.InfoWindow();

function showInfoWindow (place, marker) {
    infowindow.setContent('<div><strong>' + place.name + '</strong><br>' + place.vicinity + '</div>');
    infowindow.open(map, marker);
}


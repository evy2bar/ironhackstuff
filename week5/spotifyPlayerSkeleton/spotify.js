/*
searches for a track when user submits a track title
 */

 // $(".js-artist").val("");
 var input = "";

function searchTrack() {

    input = $(".js-artist").val();

    $.ajax({
        url: "https://api.spotify.com/v1/search?type=track&query=" + input,
        success: function(response) {

            var t = response.tracks.items[0];

            var img_url = t.album.images[0].url;
            var artist = t.artists[0].name;
            $(".author").empty();
            var track_name = t.name;
            $(".title").empty();
            var preview_url = t.preview_url;



            $('.album-image').prop('src', img_url);
            $(".author").append(artist);
            $(".title").append(track_name);
            $('.audio-player').prop('src', preview_url);

           

             console.log(response)
        },
        error: function() {
            alert("error loading the track")
        },

    });
}

function updateProgress() {
	var audio = $('.audio-player');
	var currentTime = $('.audio-player').prop('currentTime');

	$(".seekbar").prop('value',currentTime );

	if (audio.currentTime > 0) {
   		value = Math.floor((100 / audio.duration) * audio.currentTime);
        progress.style.width = value + "%";	
	};

};

function artistModal() {
 	if (!input) {
 		 input = "Nothing Else Matters";
 	}

	$.ajax({
		url: "https://api.spotify.com/v1/search?type=track&query=" + input,


		success: function (response){
			var info = response.tracks.items[0].artists[0].href;

			var albumName = response.tracks.items[0].album.name;
			 $(".js-albumName").empty();

			 var albumId = response.tracks.items[0].album.id;

			$.ajax({
				url: info,

				success: function(response){
					var	name = response.name;
		            $(".js-name").empty();

					var popular = response.popularity;
					$(".js-popular").empty();

					var picture = response.images[0];

					var genres = response.genres;
					$(".js-genres").empty();
					console.debug(genres);

					for (var i = 0; i < genres.length; i++) {
					
						if (i == genres.length - 1) {
							$(".js-genres").append(genres[i] + ".");
						}
						else{
							$(".js-genres").append(genres[i] + ", ");
						}
					}

					$('.js-picture').prop('src',picture.url);
		            $(".js-name").append(name);
					$(".js-popular").append(popular);
					$(".js-albumName").append(albumName);
		            
				},
				error: function(){
					alert("error loadind info")
				}

			});
			
			$(".full-album").prop("href","https://open.spotify.com/album/" + albumId);
			  

			
		},
		error: function(){
			alert("Error loading artist info")
		}

	});
	

}

  


$(document).on("ready", function() {
    var audio = $('.audio-player');
    $.ajax({
    	url:"https://api.spotify.com/v1/search?query=metallica&offset=0&limit=20&type=track",
    	success: function(response) {

            var t = response.tracks.items[0];

    		var img_url = t.album.images[0].url;
            var artist = t.artists[0].name;
           
            var track_name = t.name;
           
            var preview_url = t.preview_url;



            $('.album-image').prop('src', img_url);
            $(".author").append(artist);
            $(".title").append(track_name);
            $('.audio-player').prop('src', preview_url);




    	},
    	error: function(){
    		alert("error loading the page");
    	}
    });

    $(".js-submit-button").on("click", function(event) {
        if (!$(".js-artist").val()) {
            alert("There are empty fields!");
            return;
        }
        searchTrack();
    });

    var playing = false;


    $(".js-play-btn").on("click", function(track) {

        if (!playing) {
            audio.trigger("play");
            playing = true
            $(".js-play-btn").addClass("playing")
        } else {
            audio.trigger("pause");
            playing = false
            $(".js-play-btn").removeClass("playing")
        }


    });


    audio.on("timeupdate", updateProgress);

    $(".author").on("click", function(){
    	$(".js-modal").modal();
    	artistModal();
    });

});
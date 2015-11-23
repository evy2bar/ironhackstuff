$(document).on("ready", function(){

	$(".js-submitButton").on("click", function() {
		if (!$(".js-artist").val() ){
    		alert("There are empty fields!");
    		return;
    	}
		searchArtist();
	});

	$(".js-refreshButton").on("click", function() {
		 $(".js-artist-list").fadeOut(1000, function(){
			$(this).empty();
		});
	});	

	
	function searchArtist() {
		var input = $(".js-artist").val()
		var search = input.split(" ").join("+")
		$(".js-artist-list").fadeIn(1000);

		$.ajax({
			url: "https://api.spotify.com/v1/search?type=artist&query=" + search,
			success:function(get_artist) {
				//console.log(get_artist)
				var limit_5 = get_artist.artists.items.slice(0, 5);
				$(".js-artist-list").empty();

				limit_5.forEach(function(artist) {
					var url = artist.images.length > 0 ? artist.images[0].url : '';
					var liHtml = "\
					<li>\
					" + artist.name + "\
					<br><a class='album' data-id='" + artist.id + "' href='#'><img src='"+ url +"' width='100' height='100'></a>\
					</li>";
					if (url) { //is the same as (url !== null !== "" !== undefined), by defaul JS does that!!! 
						$(".js-artist-list").append(liHtml);
					}
				});
				$(".album").on("click", function showAlbums(event) { 
					var artist_id = $(event.currentTarget).data("id");

					$.ajax({
						url: "https://api.spotify.com/v1/artists/" + artist_id + "/albums",
						success:function(get_albums){
							var albums_list = get_albums.items;
							albums_list.forEach(function(album){
							var urlAl = album.images.length > 0 ? album.images[0].url : '';
							var liAlbums = "\
							  <li>\
							    " + album.name + "\
							    <br><a class='js-albums' href=" + album.id + "><img src='" + urlAl + "' width='100' height='100'></a>\
							  </li>";
								if (urlAl) { 
									$(".show_albums").append(liAlbums);
								}
										console.log(get_albums.items)
							});

							$(".js-albums").on("click", function showTracks(event) {
								var albumTracks = $(event.currentTarget).data("????");
								$.ajax({
									success:function() {

									},
									error:function(){

									},
								});
							});
						},
						error: function(){
							alert("error");
						},
					});	
				});
				onSearchResults();
			},
		
			error: function(){
				alert("error");
			},
			dataType: "json"
		});
	}

	function onSearchResults() {
	 	$(".js-artist").val("");
	}
});







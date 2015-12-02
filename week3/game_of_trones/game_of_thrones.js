// var fs = require("fs")
// var math = require ("mathjs");
// function fileAction (error, episodes){
// 	if (error){
// 		console.log("you got an error");
// 		throw error;
// 	};
// 		var parsedEpisodes = JSON.parse(episodes);
// 		for (n = 0; n < parsedEpisodes.length; n++){
// 			var star = math.floor(pisodes[n].rating);
// 		}
// 		console.log("Title:" + parsedEpisodes[1].title + " Episode: #  " + parsedEpisodes[0].episode_number);
// 		console.log(parsedEpisodes[0].description);
// 		console.log("Rating" + parsedEpisodes[0].rating);
	
// };

// fs.readFile("./GoTEpisode.json", "utf8", fileAction)
  




// var fs = require('fs'); // 1
// var math = require('mathjs');

// function fileActions(error, episodes) {
// 	if(error) {
// 		console.log("Error, Murderface! Back the fuck off!");
// 		console.log(error); // 3
// 	} else {
// 		var Pepisodes = JSON.parse(episodes);
// 		var PepisodesSort 
// 		for (n = 0; n < Pepisodes.length; n++) {
// 			var star = math.floor(Pepisodes[n].rating);
// 			var stars = "";
// 			for (i = 0; i < star; i++) {
// 				stars += "*";
// 			}; 
			
// 			console.log("Title: " + Pepisodes[n].title + "  Episode #: " + Pepisodes[n].episode_number);
// 			console.log(Pepisodes[n].description);
// 			console.log("Rating: " + Pepisodes[n].rating + " " + stars); 
// 			}
		
// 		};
		
// 	} // 3


// fs.readFile('./GoTEpisode.json', 'utf8', fileActions); //2



// var fs = require('fs'); // 1
// var math = require('mathjs');

// function fileActions(error, episodes) {
// 	if(error) {
// 		console.log("Error, Murderface! Back the fuck off!");
// 		console.log(error); // 3
// 	} else {
// 		var Pepisodes = JSON.parse(episodes);
// 		Pepisodes = Pepisodes.sort(function (a,b) {
// 			return a.episode_number - b.episode_number;
// 			})
// 		for (n = 0; n < Pepisodes.length; n++) {
// 			var star = math.floor(Pepisodes[n].rating);
// 			var stars = "";
			
// 			for (i = 0; i < star; i++) {
// 				stars += "*";
// 		}; 
// 			console.log("Title: " + Pepisodes[n].title + "  Episode #: " + Pepisodes[n].episode_number);
// 			console.log(Pepisodes[n].description);
// 			console.log("Rating: " + Pepisodes[n].rating + " " + stars);
// 			}
// 	};
// 	} // 3

 
// function filter(){

// }
// filPepisodes( filter)


// fs.readFile('./GoTEpisode.json', 'utf8', fileActions); //2 




var fs = require('fs');

function fileActions(error, episodes){
	if(error){
		console.log("You have an error");
		throw(error);
	} else {
		var parsedEpisodes = JSON.parse(episodes);
		var filteredEpisodes = filterBadEpisodes(parsedEpisodes)
		sortEpisodes(filteredEpisodes, episodePrinter);
	}
}

function filterBadEpisodes(episodes){
	var highlyRated = episodes.filter(function(episode){
		return episode.rating > 8.5
	})
	return highlyRated
}

function sortEpisodes(episodes, callback){
	var sortedEpisodes = episodes.sort(function(a, b){
		return a.episode_number-b.episode_number
	});
	callback(sortedEpisodes);
}

function episodePrinter(episodes){
	episodes.forEach(function(episode){
		stars = starMaker(episode.rating)
		console.log("Title: " + episode.title + " | " + episode.episode_number);
		console.log(episode.description);
		console.log("Rating: " + episode.rating + " " + stars +  "\n");
	});
}

function starMaker(rating){
	var stars = "";
	var rounded_rating = Math.floor(rating);
	for (var i = 0; i < rounded_rating; i++){
		stars = stars +  "*";
	}
	return stars;
}
 
 function searchFor(episode, caracter){
 	// var findCaracter = episode.indexOf(function(episode){
 	// 	return episode.description
 	// });
	// if (episode.description.indexOf(caracter) === -1){
	// 	console.log("The character isn't there");
	episode.description.indexOf(caracter) !== -1

	}
  
 }
fs.readFile('./GoTEpisode.json', 'utf8', fileActions);
























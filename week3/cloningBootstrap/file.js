// console.log("hello, world")
// console.log("my friend is \"special\"")
// console.log('my friend is \'special\'')
// console.log("my friend 'is' special")
// console.log('my friend "is" special')

// function eat(food){
// 	console.log("I'm eating some " + food)

// if (food === "pizza"){
// 	console.log("yay, pizza");
// }
// else if (food === "cookies"){
// 	console.log("Cokies are good too ");
// }
// else {
// 	console.log("ok, enjoy eating your " + food);
// }
// }

// eat("asparragus")


//  for (var i = 1; i <= 5; i += 1){
//  	console.log(i)
//  }


//   var foods = ["pizza", "ice", "bread"];

// //this is designe to iterate into arays:  use the .forEach
//   foods.forEach(function (food){
// console.log( food.toUpperCase() );
//   });

// //other way to iterate into arrays
// var capsFoods = foods.map(function (food){
//  return food.toUpperCase() ;
//   });
// console.log("\nMy capsFoods:")
// console.log(capsFoods)

// //other way adding AND
// var msg = foods.reduce(function(pre, food){
// 	return pre + " and " + food;
// });
// console.log(msg)

// // this return a new array without the condition
// var best = foods.filter(function(food){
// return food !== "bread"
// });
// console.log(best)


//var numbers = "80:70:90:100"
//averageColon(numbers) sum  /4

 
// var numbers = "80:70:90:100".split(':').map(function(n) {
//    return Number(n);
// });
// console.log(numbers)

// var numbers = "80:70:90:100".split(':')
// var averageColon = numbers
// var sum = 0 

// for( var i = 0; i < numbers.length; i++ ){
//     sum += parseInt( numbers[i], 10 ); 
//     var averageColon = sum/numbers.length;
// }
// console.log(averageColon)


// function decode (wordList) {
// 	var index = 0;
// 	var secretMessage = "";
// 	wordList.forEach(function (word) {
//      secretMessage += word[index];
//      index += 1;
//      if (index === 5){
//      	index = 0 
//      }
// 	}); 
// 	return secretMessage;
// }
 // it does the same using this ==> var index = (index + 1) % 5;

// function decode (wordList) {
// 	var index = 0;
// 	var secretMessage = "";
// 	wordList.forEach(function (word) {
//      secretMessage += word[index % 5];
//      index += 1;

// 	}); 
// 	return secretMessage;
// }


// var words, message, words2
//  words = [
//     "dead",         // 1st -> d
//     "bygone",       // 2nd -> y
//     "landing",      // 3rd -> n
//     "cheaply",      // 4th -> a
//     "assumed",      // 5th -> m
//     "incorrectly",  // 1st -> i
//     "attention",    // 2nd -> t
//     "agent"         // 3rd -> e
// ];
// message = decode(words)
// console.log(message)

//  words2 = [
//   "January", "lacks", "caveats", 
//   "hazardous", "DOORS", "crying",
//   "arrogantly", "climate", "proponent",
//   "rebuttal"
// ];

// message = decode(words2)
// console.log(message)

 
//decode una oracion con las palabras de atras para adelante
 
// function decode (sentence) {
// var words = sentence.split(" ").reverse();


// var index = 0;
// var secretMessage = "";
// words.forEach(function (word) {
//      secretMessage += word[index];
//      index += 1;
//      if (index === 5){
//      index = 0 
//      }
// }); 
// return secretMessage;
// }

// var sentence, message

// sentence = "agent attention incorrectly assumed cheaply landing bygone dead"  //===> dynamite 

//  message = decode(sentence)
//  console.log(message)

//decode cada palabra de la oracion de atras para adelante

// function decode (sentence) {
// 	var words = sentence.split(" ");
 	
// 	var index = 0;
// 	var secretMessage = "";
// 	words.forEach(function (word) {
//      secretMessage += word.split("").reverse().join("")[index];
//      index += 1;
//      if (index === 5){
//      	index = 0 
//      }
// 	}); 
// 	return secretMessage;
// }



// var sentence, message

// sentence = "agent attention incorrectly assumed cheaply landing bygone dead" // ==>tutuegne

//  message = decode(sentence)
//  console.log(message)



// function decode (sentence) {
// 	var words = sentence.split(" ").reverse();
 	
// 	var index = 0;
// 	var secretMessage = "";
// 	words.forEach(function (word) {
//      secretMessage += word.split("").reverse().join("")[index];
//      index += 1;
//      if (index === 5){
//      	index = 0 
//      }
// 	}); 
// 	return secretMessage;
// }



// var sentence, message

// sentence = "agent attention incorrectly assumed cheaply landing bygone dead" // ===> dniasyoe

//  message = decode(sentence)
//  console.log(message)






// var Car = function (model, noise, wheels){
// this.model = model
// this.noise = noise
// this.wheels = 4
// };
//  Car.prototype.makeNoise = function (){
// console.log(this.noise)
//  };


// var Prius = new Car ("prius", "brrr", "");
// Prius.makeNoise();
// console.log(Prius.model)




  //setting count dound using setTimeout

// var SECOND = 1000;

// function blastOff (seconds) {
//   function countdown () {
//     console.log(seconds);
//     seconds -= 1;

//     if (seconds >= 0) {
//       setTimeout(countdown, 1 * SECOND);
//     }

//     else {
//       console.log("Blast off!");
//     }
//   }

//   countdown();
// }



// blastOff(10);



// console.log("start");

// var fs = require ("fs");

//  function print(error, content){
//  	console.log("done reading")
// console.log(content);
// if (error){
// 	console.log(error);
// }
// else {
// 	console.log(content);
// }
//  }
// fs.readFile("name of the file you wanna read, ex: pl.html", "utf8", print);
//  console.log("end") // la consola priteara primero el done reading, y lugo el print del file en si.  


// var fs = require("fs")   // this only prints the content of the file
// function plPrinter(error, content){
// console.log(content);
// };
// fs.readFile("./pl.txt", "utf8", plPrinter)



var fs = require("fs")
function plPrinter(error, content){
	if (error){
		console.log(error);
	} else{
		var pl = content.split("---");
		pl.forEach(function(sentence){
			console.log(sentence)
		})
		console.log(pl);
	}
console.log(content)
};
fs.readFile("./pl.txt", "utf8", plPrinter)








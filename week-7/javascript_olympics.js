// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up

// Bulk Up
// var athlete_state = {};
// function athlete(array) {
//     athlete_state.name = array[0];
//     athlete_state.event = array[1];
//     athlete_state.win = athlete_state.name + " won the " + athlete_state.event + "!";
// }


// Jumble your words
// function scramble(phrase) {
//     var array = phrase.split(" ");
//     var len = array.length;
    
//     for (var i = 0; i < len; i++) {
//         array[i] = array[i].split("").reverse().join("");
//     }
//     console.log(array.join(" "));
// }

// function scramble(phrase) {
//     var str = phrase.toString();
    
//     console.log(Array.prototype.map.call(str, function(x) {return x}).reverse().join(""));
// }

// 2,4,6,8
// function appreciate(array) {
//     var even = array.filter(function(num) { return num % 2 == 0; });
//     console.log(even);
// }

// "We built this city"
function Athlete(name, age, sport, quote) {
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// That sometimes the instructions are so unclear, especially with no driver code that the solution can be completed by many different ways. This makes it a little daunghting since there could be a long time investigating possible outcomes that could be wrong.

// What are constructor functions?
// They are functions that reference themselves when using argument values for their needs. That is, they use "this" keyword to assign their values, like the Ruby keyword "self"

// How are constructors different from Ruby classes (in your research)?
// They are basically the same with different termenology.
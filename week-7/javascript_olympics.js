// JavaScript Olympics

// I paired [by myself, with:Elizabeth Roche] on this challenge.

// This challenge took me [1.5hr] hours.

////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Warm Up

var athlete1 = {
  name: "Sarah",
  event: "Ladie's Singles"
}

var athlete2 = {
  name: "Michael",
  event: "Men's Singles"
}
var athlete_array = [athlete1, athlete2];

function add_property(array) {
  for (var i = 0; i < array.length; i++){
    array[i].win = array[i].name + " won the " + array[i].event + "!";    
    console.log(array[i].win);
  }
}

add_property(athlete_array)

////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Jumble your words
function reverse_string(string){
  console.log(Array.prototype.map.call(string, function(char) {return char}).reverse().join(""));
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 2,4,6,8
function appreciate(array) {
    var even = array.filter(function(num) { return num % 2 == 0; });
    console.log(even);
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// That sometimes the instructions are so unclear, especially with no driver code that the solution can be completed by many different ways. This makes it a little daunghting since there could be a long time investigating possible outcomes that could be wrong.

// What are constructor functions?
// They are functions that reference themselves when using argument values for their needs. That is, they use "this" keyword to assign their values, like the Ruby keyword "self"

// How are constructors different from Ruby classes (in your research)?
// They are basically the same with different termenology.
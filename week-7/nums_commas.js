// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Elizabeth Roche.

////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Pseudocode
//input: integer
// output: string with commans placed every third character from the right

// steps:
//   1. convert integer to string
//   2. put the string into an array and split them into individual characters
//     2.1 check length of array
//   3. reverse the array
//   4. insert a comma every third index
//   5. reverse and join
//   6. output string to console

////////////////////////////////////////////////////////////////////////////////////////////////////////////
function commas(integer) {
  var num_string = new String(integer);
  
  var num_array = num_string.split("");
  var len = num_array.length;
  
  if (len < 4) {
    num_string = num_string.splite("").join("");
    console.log(num_string);
  }
  else {
    var reverse_array = num_array.reverse();
    
    for (var i = 3; i < len; i+= 4) {
      reverse_array.splice(i, 0, ",");
      len = reverse_array.length;
    }
    
    num_string = reverse_array.reverse().join("");
    console.log(num_string);
  }
  
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////
// this is the refactored solution

function commas(integer) {
  //variables initiated for the downstream code
  var num_string = new String(integer);
  var num_array = num_string.split("");
  var len = num_array.length;

  //function that joins array after commas have been
  //added to the array
  function join_num(){
    num_string = num_array.join("");
    return num_string;
  }
  
  //returns for hundreds or less
  if (len < 4) {
    //calls function to return string
    join_num.call(num_array);
  }
  //returns commas for thousands and greater
  else {
    //adds comma every third digit
    //takes added comma into account
    for (var i = -3; i > -len; i-= 4) {
      num_array.splice(i, 0, ",");
      len = num_array.length;
    }
    //calls function to return string
    join_num.call(num_array);
  }
  
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Your Own Tests (OPTIONAL)



////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// No. It was still break it into small bits and tackle each small bit first. It was just about looking through the docs to see what methods JS has to offer, and how they work. 

// What did you learn about iterating over arrays in JavaScript?
// Same as with ruby, its just that the terminalogy is more similar to Java than to Python for Ruby

// What was different about solving this problem in JavaScript?
// JS is heavily influenced by Java syntax and getting to know the methods and syntax is different. 

// What built-in methods did you find to incorporate in your refactored solution?
// .splice, .split and .join methods
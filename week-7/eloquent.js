// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!
// Run this file in your terminal using `node eloquent.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

// var city = "San Diego";
// console.log("America's Finest City: " + city);

// // Program about food
// function ask()
// {
//     prompt("What's your favorite food?");
//     alert("Hey! That's my favorite too!");
// }

// ask();
// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Triangle
// function triangle(size)
// {
//     var str = "#";
    
//     for (var i = 0; i < size; i++)
//     {
//         console.log(str);
//         str += "#"
//     }
// }
 
// triangle(5);

// FizzBuzz
// function fizzbuzz()
// {
//     var array = new Array(100);
//     for (var i = 1; i < 101; i++) 
//     {
//         if (i % 3 == 0 && i % 5 == 0)
//             {console.log("FizzBuzz");}
//         else if (i % 3 == 0)
//             {console.log("Fizz");}
//         else if (i % 5 == 0)
//             {console.log("Buzz");}
//         else
//             {console.log(i)}
//     }
// } 

// fizzbuzz();

// Complete the `minimum` exercise.
// Mininum
// function mininum(num1, num2)
// {
//     if (num1 < num2)
//     {
//         console.log(num1);
//     }
//     else 
//     {
//         console.log(num2);
//     }
// };

// mininum(-120, -120);

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

// Me
var me = {
    name: "Rene",
    age: "Big", 
    foods: ["Tacos", "Burritos", "Nachos"],
    quirk: "Rules are more like guidelines philosophy"
}
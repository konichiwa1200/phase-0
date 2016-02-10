// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode



// Initial Solution
// function commas(number) {
//     var num_string = new String(number);
//     var len = num_string.length;
//     var array = num_string.split("");
    
//     if (len < 4) {
//         return array.join("");
//     }
//     else {
//         var comma_start = -3; 
//         var insert_count = 0;
        
//         while (comma_start > -len) {
//             var insert_pos = comma_start + insert_count;
//             array.splice(insert_pos, 0, ",");
//             insert_count--;
//             comma_start -= 3;
//         } 
        
//         return array.join("");
//     }
// }



// Refactored Solution
function commas_refactor(number) {
    var array = new String(number).split("");
    var len = array.length;
    
    if (len < 4) {
        return array.join("");
    }
    else {
        var insert_pos = -3;
        
        while (insert_pos > -len) {
            array.splice(insert_pos, 0, ",");
            insert_pos -= 4;
        } 
        
        return array.join("");
    }
}



// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// No. It was still break it into small bits and tackle each small bit first. It was just about looking through the docs to see what methods JS has to offer, and how they work. 

// What did you learn about iterating over arrays in JavaScript?
// Same as with ruby, its just that the terminalogy is more similar to Java than to Python for Ruby

// What was different about solving this problem in JavaScript?
// JS is heavily influenced by Java syntax and getting to know the methods and syntax is different. 

// What built-in methods did you find to incorporate in your refactored solution?
// .splice, .split and .join methods
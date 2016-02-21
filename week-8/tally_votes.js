// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// iterate through individuals
//   iterate through each individuals votes, store in tally count
//     + 1 for every candidate that receives vote
    
// select candidate with highest vote count
//   present winners

// __________________________________________
// Initial Solution
// function tallyVotes(votes) {
//   for (var vote in votes) {
//     if (voteCount["president"][votes[vote].president] == undefined) {
//       voteCount["president"][votes[vote].president] = 1;
//       console.log(votes[vote]["president"])
//     } else {
//       voteCount["president"][votes[vote].president] += 1
//     };
//     if (voteCount["vicePresident"][votes[vote].vicePresident] == undefined) {
//       voteCount["vicePresident"][votes[vote].vicePresident] = 1;
//     } else {
//       voteCount["vicePresident"][votes[vote].vicePresident] += 1
//     };
//     if (voteCount["secretary"][votes[vote].secretary] == undefined) {
//       voteCount["secretary"][votes[vote].secretary] = 1;
//     } else {
//       voteCount["secretary"][votes[vote].secretary] += 1
//     };
//     if (voteCount["treasurer"][votes[vote].treasurer] == undefined) {
//       voteCount["treasurer"][votes[vote].treasurer] = 1;
//     } else {
//       voteCount["treasurer"][votes[vote].treasurer] += 1
//     };
//   }
// };

// function winners(voteTally) {
//   for (var position in voteTally) {
//     for (var people in position) {
//       console.log("Current person: " + voteTally[position][people]);
//     }
//   }
// };



// function sort(group) {
//   var sorted = group;
//   while (true) {
//     var madeSort = false;
//     for (var i = 0; i < group.length + 1; i++) {
//       if (group[i] > group[i+1]) {
//         var hold = group[i]
//         console.log(group[i])
//         group[i] = group[i+1];
//         group[i+1] = hold;
//         madeSort = true;
//       }
//     }
//     if (madeSort == false) {
//       return sorted;
//     }
//   }
// }
// tallyVotes(votes);
// console.log(voteCount);
// // for (var key in voteCount) {
// //   if (voteCount.hasOwnProperty(key)) {
// //     console.log(key + " -> " + voteCount[key]);
// //     for (var person in key) {
// //       if (key.hasOwnProperty(person)) {
// //         console.log(person + " -> " + voteCount[person]);
// //       }
// // }
// //   }
// // }
// // console.log("Mary is the value of " + voteCount["president"]["Mary"]);
// // console.log(winners(voteCount));
// console.log(sorted(voteCount));



// // console.log(Object.keys(voteCount))
// function sorted(final_count){
//   for (var i in final_count) {
//     var keysorted = Object.keys(voteCount[i]).sort(function(a,b) {
//      console.log("voteCount[i][b]: " + voteCount[i][b] + " b: " + b)
//      console.log("voteCount[i][a]: " + voteCount[i][a] + " a: " + a)
//      console.log(voteCount[i][b] - voteCount[i][a])
//       return voteCount[i][b] - voteCount[i][a]
//     })
//     officers[i] = keysorted[0]
//   }
// }
// __________________________________________
// Refactored Solution

function tallyVotes(votes) {
  for (var position in officers){
    for (var vote in votes) {
      if (voteCount[position][votes[vote][position]] == undefined) {
        voteCount[position][votes[vote][position]] = 1;
      } else {
        voteCount[position][votes[vote][position]] += 1
      };
    }
  }
};

function sorted(votetally){
  for (var i in votetally) {
    var keysorted = Object.keys(voteCount[i]).sort(function(a,b) {
      return voteCount[i][b] - voteCount[i][a]
    })
    officers[i] = keysorted[0]
  }
}

tallyVotes(votes)
sorted(voteCount)

// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// That knowing which layer you are at really makes a difference. As in Ruby, its like accessing a matrix.

// Were you able to find useful methods to help you with this?
// Yes. The sort method, which in conjunction with the annonymous function to sort from high to low, we were able to extract the high count per position

// What concepts were solidified in the process of working through this challenge?
// Accessing nested objects is exactly the same as accessing matrix elements

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
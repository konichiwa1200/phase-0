// PERSON 5:

// (Code based on only reading Person 3/4's User stories)


//assert test
// Create an assert function that accepts an array of integers as an agrument. If the input is an integer return true, if its not throw an error message.
function assert(arr){
    for (var i in arr) {
    	if (typeof arr[i] == "number") {
    		return true 
    	}
		else {
			return new Error("there is a non-integer present")
    	}
    }
}
// console.log(assert([1,2,3,4,5]))
// console.log(assert(["1", "this is a string"]))


// tests for sum
// Returns the cummulative sum of all the elements in an array
function sum(array){
    return array.reduce(function(a, b){ return a + b})
}
// console.log(sum([2,4,6,8,10]))
// console.log(sum([1,3,5,7,9,11]))




// // tests for mean
// Returns the average of value in an array
function mean(arr){
    return sum(arr) * 1.0 / arr.length
}
// console.log(mean([2,4,6,8,10]))
// console.log(mean([1,3,5,7,9,11]))
// console.log(mean([1,3,5,7,9,11,0]))





// // tests for median
// Returns the median value in an array
function median(arr) {
    var sorted = arr.sort(function(a, b){ return a-b })
    var length = arr.length
    var median = Math.floor((length - 1) / 2)
	if (length % 2 == 0) {
		return mean(sorted.splice(median, 2))
	}
	else {
		return arr[median]
	} 
}


console.log(median([2,4,6,8,12,14,16,18]))
console.log(median([1,3,5,7,9,11,13,15,17,19,21,23,25]))
console.log(median([1,3,5,7,9,11,0])) 






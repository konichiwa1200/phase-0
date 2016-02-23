// Numbers to English Words

// Pseudo
// make collection that holds zero to nine digits to words
// 	make collection that holds 10 to 100,(increments of 10) digits to words
// convert input into string
// 	count string length
//	test for special cases
// convert digit to words

// initial
// var single_digits = {
// 	"0": "zero",
// 	"1": "one",	
// 	"2": "two",	
// 	"3": "three",	
// 	"4": "four",	
// 	"5": "five",	
// 	"6": "six",	
// 	"7": "seven",	
// 	"8": "eight",	
// 	"9": "nine",	
// }

// var teen_digits = {
// 	"10": "ten",
// 	"11": "eleven",
// 	"12": "twelve",
// 	"13": "thriteen",
// 	"14": "fourteen",
// 	"15": "fifteen",
// 	"16": "sixteen",
// 	"17": "seventeen",
// 	"18": "eighteen",
// 	"19": "nineteen",
// }

// var double_digits_no_teens= {
// 	"2": "twenty",
// 	"3": "thirty",
// 	"4": "fourty",
// 	"5": "fifty",
// 	"6": "sixty",
// 	"7": "seventy",
// 	"8": "eighty",
// 	"9": "ninety",
// }

// function in_words(number) {
// 	num = String(number)
// 	num_array = num.split("")
// 	number_length = num.length

// 	if (number_length == 1) {
// 		return single_digits[num]
// 	}

// 	else if (number_length == 2 && num[0] == '1') {
// 		return teen_digits[num]
// 	}

// 	else if (number_length == 2 && num[0] != '1') {
// 		return double_digits_no_teens[num_array[0]] + " " + single_digits[num_array[1]]
// 	}

// 	else if (number_length == 3) {
// 		return single_digits[num_array[0]] + " hundred " + double_digits_no_teens[num_array[1]] + " " + single_digits[num_array[2]]
// 	}

// 	if (number_length > 3) {
// 		return "Sorry, I don't know how to count that high...yet"
// 	}
// }

// Refactored

var convert_digits = {
	"0": ["zero", "ten", "ty"],
	"1": ["one", "eleven",],
	"2": ["two", "twelve", "twen"],
	"3": ["three", "thirteen", "thir"],
	"4": ["four", "fourteen", "four"],
	"5": ["five", "fifteen", "fif"],
	"6": ["six", "sixteen", "six"],
	"7": ["seven", "seventeen", "seven"],
	"8": ["eight", "eighteen", "eigh"],
	"9": ["nine", "nineteen", "nine"],
}

var special_end = ["", "", "ty", "hundred"]

function in_words(number) {
	var num_array = String(number).split("")
	var number_length = num_array.length
	var smaller_number = number % 100
	var smaller_array = String(smaller_number).split("")
	var smaller_length = smaller_array.length
	
	if (number >= 0 && number < 20) {
		return up_to_twenty(num_array, number_length)
	}
	else if (number < 100) {
		return up_to_hundred(num_array, number_length)
	}
	else if (number < 1000) {
		if (smaller_number == 0) {
			return up_to_thousand(num_array, number_length)
		}
		if (smaller_number < 20) {
			return up_to_thousand(num_array, number_length) + " " + up_to_twenty(smaller_array, smaller_length)
		}
		else {
			return up_to_thousand(num_array, number_length) + " " + up_to_hundred(smaller_array, smaller_length)
		}
	}
	else {
		return "Sorry, I don't know how to count that high...yet"
	}
}

function up_to_twenty(num_array, length) {
	var first_digit = length - 1

	return convert_digits[num_array[first_digit]][first_digit]
}

function up_to_hundred(num_array, length) {
	var first_digit = length - length
	var second_digit = length - 1

	if (num_array[second_digit] == "0") {
		return convert_digits[num_array[first_digit]][length] + special_end[length]
	}
	else {
		return convert_digits[num_array[first_digit]][length] + special_end[length] + " " + convert_digits[num_array[second_digit]][first_digit]
	}	
}

function up_to_thousand(num_array, length) {
	var first_digit = length - length

	return convert_digits[num_array[first_digit]][first_digit] + " " + special_end[length]	
}

console.log(in_words(100))
console.log(in_words(101))
console.log(in_words(102))
console.log(in_words(103))
console.log(in_words(104))
console.log(in_words(105))
console.log(in_words(106))
console.log(in_words(147))
console.log(in_words(138))
console.log(in_words(129))
console.log(in_words(1010))

//Reflection

// What concepts did you solidify in working on this challenge? 
// Creating functions and modularizing code

// What was the most difficult part of this challenge?
// Getting functions to work properly. Plenty of errors occured due to bad logic, and trying to access elements in the arrays that did not exist. Additionally, performed numerous repetitive coding and refactored to final solution. 

// Did you solve the problem in a new way this time?
// No. Same method approached.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// Same pseudo. Same process, take number, split, use object in JS vs hash in Ruby, get the first 20 cases set up properly. Then get everything else to use the same code 








// Numbers to English Words

// Pseudo
// make collection that holds zero to nine digits to words
// 	make collection that holds 10 to 100,(increments of 10) digits to words
// convert input into string
// 	count string length
//	test for special cases
// convert digit to words
// 	join words

// initial
var single_digits = {
	"0": "zero",
	"1": "one",	
	"2": "two",	
	"3": "three",	
	"4": "four",	
	"5": "five",	
	"6": "six",	
	"7": "seven",	
	"8": "eight",	
	"9": "nine",	
}

var teen_digits = {
	"10": "ten",
	"11": "eleven",
	"12": "twelve",
	"13": "thriteen",
	"14": "fourteen",
	"15": "fifteen",
	"16": "sixteen",
	"17": "seventeen",
	"18": "eighteen",
	"19": "nineteen",
}

var double_digits_no_teens= {
	"2": "twenty",
	"3": "thirty",
	"4": "fourty",
	"5": "fifty",
	"6": "sixty",
	"7": "seventy",
	"8": "eighty",
	"9": "ninety",
}

function in_words(number) {
	num = String(number)
	num_array = num.split("")
	number_length = num.length

	if (number_length == 1) {
		return single_digits[num]
	}

	else if (number_length == 2 && num[0] == '1') {
		return teen_digits[num]
	}

	else if (number_length == 2 && num[0] != '1') {
		return double_digits_no_teens[num_array[0]] + " " + single_digits[num_array[1]]
	}

	else if (number_length == 3) {
		return single_digits[num_array[0]] + " hundred " + double_digits_no_teens[num_array[1]] + " " + single_digits[num_array[2]]
	}

	if (number_length > 3) {
		return "Sorry, I don't know how to count that high...yet"
	}
}

console.log("The number is 1 " + in_words(1))
console.log("The number is 10 " + in_words(10))
console.log("The number is 34 " + in_words(34))
console.log("The number is 55 " + in_words(55))
console.log("The number is 99 " + in_words(99))
console.log("The number is 100 " + in_words(100))
console.log("The number is 158 " + in_words(158))
console.log("The number is 1000 " + in_words(1000))
console.log("The number is 27 " + in_words(27))
console.log("The number is 92 " + in_words(92))





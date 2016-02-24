// Challenge 9.2.2
// ------------------------// ------------------------// ------------------------
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

// ------------------------// ------------------------// ------------------------

// Challenge 9.2.1
// ------------------------// ------------------------// ------------------------
// 
<html lang='en'>
    <head>
        <meta charset='utf-8'>
        <style>
        body {
            background: #4cadff;
            font-family: Arial, Helvetica, sans-serif;
        }

        section {
            padding: 0;
            margin: 0 12%;
            background: lightblue;
            height: 100%;
            position: absolute;
            top: 0;
            width: 75%;
            
        }

        ul {
            padding: 0px; 
            list-style-type: none;   
        }

        li {
            height: 35px;
            line-height: 35px;
            padding-left: 10px;
            font-size: 20px;
        }

        li:nth-child(odd) {
            background: #4cadff;
        }
        /*#003c7f #4cadff #0078ff #26507f #0060cc*/
        .remove {
            background: red;
            border: none;
            height: 35px;
            padding: 0px 30px;
            color: white;
            float: right;
        }

        .remove:hover, #button_submit:hover {
            background: #003c7f;
        }

        #input {
            display: inline-block;
            padding: 0px;
            margin: 0px;
            width: 100%;
            text-align: center;
        }

        #item {
            height: 35px;
            text-align: center;
            font-size: 20px;
            border: 0;
            padding: 0;
            width: 65%
        }

        #quantity {
            height: 35px;
            text-align: center;
            font-size: 20px;
            border: 0;
            padding: 0;
            width: 20%;
        }

        #button_submit {
            background: green;
            border: none;
            height: 35px;
            color: white;
            position: relative;
            bottom: 4px;
            width: 13.5%;
        }
        </style>
        <title>Grocery List</title>
    </head>
    <body>
        <section>
            <h1>Grocery List</h1>
            
            <div id="input">
                <input type="text" id="item" placeholder="New Item or Update Item">
                <input type="text" id="quantity" placeholder="Quantity">
                <button id="button_submit">Add</button>
            </div>

            
            <h2> List: </h2>

            <ul id="groceryList"></ul>
        </section>  
        
        <!--JS file Below-->
        <script>
        // Pseudocode
        // place field with placeholder "item"
        // place field with placeholder "quantity"
        // place submit button

        // add items object called item
        //     property name will be item
        //     property value will be quantity

        // display list
        //     place remove button next to item displayed

        // initial
        // var items = {}

        // function addItem() {
        //     var item = document.getElementById("item")
        //     var quantity = document.getElementById("quantity")
        //     items[item.value] = quantity.value
        //     printItem(item.value, quantity.value)
        // }

        // function printItem(item, quantity){
        //   var myList = document.getElementById("printitems")
        //   var mySection= document.createElement("div")
        //   myList.appendChild(mySection)
        
        //   var itemPrint = document.createElement("label")
        //   itemPrint.innerHTML = quantity + ": " + item
        //   myList.appendChild(itemPrint)
        
        //   var itemRemoveButton = document.createElement("button")
        //   itemRemoveButton.setAttribute("id", item)
        
        // }

        // var addItemsToList = document.getElementById("submit")
        // addItemsToList.addEventListener("click", addItem, false)

        // function addItem() {
        //     var item = document.getElementById("item").value
        //     var node = document.createElement('LI')
        //     var textnode = document.createTextNode(item)
        //     node.appendChild(textnode)
        //     document.getElementById("printList").appendChild(node)
        // }

        // Refactored
        // sets up the necessary variables
        var items = {}

        var addItemsToList = document.getElementById("button_submit")
        addItemsToList.addEventListener("click", addItem, false)

        // ----------------------------------------------------------
        // function that takes the value from the input fields 
        function addItem() {
            // variables needed
        var item = document.getElementById('item').value
        var quantity = document.getElementById('quantity').value
        
            // makes sure input has stuff to add to list   
        if (item.length == 0 || quantity.length == 0) {
            alert('Please enter an item on the list')
        }
        else {
            //   modularity to make code maintainable
            increaseList()
        }
        }

        // function that adds item to list
        function increaseList() {
        // varialbes need for adding to the DOM
        var item = document.getElementById('item').value
        var quantity = document.getElementById('quantity').value
        var listItem = document.createElement('li')
        
        if (document.getElementById(item) == null) {
            listItem.setAttribute('id', item)
            var listItemText = document.createTextNode(quantity + ': ' + item)

            // adds child node to DOM 
            listItem.appendChild(listItemText)
            document.getElementById('groceryList').appendChild(listItem)
            
            // updates our database
            items[item] = quantity
            
            //   modularity to make code maintainable
            makeRemoveButton(item)
        }
        else {
            //   updates list
            document.getElementById(item).innerHTML = quantity + ': ' + item
            
            //   modularity to make code maintainable
            makeRemoveButton(item)
            
            //   updates database 
            items[item] = quantity
            
            // clears input fields
            clearInputField()
        }
        }

        // makes a remove button to remove items from list
        function makeRemoveButton(item) {
            // variables need for removing items
        var button = document.createElement('button')
        
            // adds attributes to the button   
        button.setAttribute('id', item)
        button.setAttribute('class', 'remove')
        button.innerHTML = 'Remove'
        
            // adds button to DOM   
        document.getElementById(item).appendChild(button)
        
            //    modularity to make code maintainable
        clearInputField()
        }

        // makes input fields ready for future inputs
        function clearInputField() {
        document.getElementById('item').value = ''
        document.getElementById('quantity').value = ''
        }

        // records every click in the page to access to buttons id
        document.addEventListener("click", function(event) {
            evaluate_click(event.target.id)
        })

        // function that removes items from list
        function evaluate_click(element) {
            // variables needed for item removal
            var clicked_element = document.getElementById(element)
            
            // limited scope. Only removes items that are child of parent nodes. 
            // As of right now, if button or item list is clicked, it is removed
            document.getElementById('groceryList').removeChild(clicked_element)
        }
        // ----------------------------------------------------------

        // Reflection
        // What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
        // HTML accessing and JS addition of DOM elements

        // What was the most difficult part of this challenge?
        // Selecting the color scheme for the HTML page. Decided that the list as envisioned did not need too much database selection. Would have liked to get the node child removal perfect, but time boxing prevented a complete implementation

        // Did an array or object make more sense to use and why?
        // Object, because it was associative.
        </script>
    </body>
</html>



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
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
var addItemsToList = document.getElementById("button_submit")
addItemsToList.addEventListener("click", addItem, false)

function addItem(){
  var item = document.getElementById('item').value
  var quantity = document.getElementById('quantity').value
  
  if (item.length == 0 || quantity.length ==0) {
    alert('Please enter an item on the list')
  }
  else {
    increaseList()
  }
}

function increaseList() {
  var item = document.getElementById('item').value
  var quantity = document.getElementById('quantity').value
  var listItem = document.createElement('li')
  listItem.setAttribute('id', item)
  var listItemText = document.createTextNode(quantity + ': ' + item)

  listItem.appendChild(listItemText)
  document.getElementById('groceryList').appendChild(listItem)
  
  makeRemoveButton(item)
}

function makeRemoveButton(item){
  var button = document.createElement('button')
  
  button.setAttribute('id', item)
  button.innerHTML = 'Remove'
  
  document.getElementById(item).appendChild(button)
  
  clearInputField()
}

function clearInputField() {
  document.getElementById('item').value = ''
  document.getElementById('quantity').value = ''
}
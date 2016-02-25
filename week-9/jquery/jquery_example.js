// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
$('img').click(function(){
    $('img').fadeOut(3000)
})
//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('body h1:first').css({'color': 'white', 'border': '1px solid black', 'visibility': 'true'})
$('h1:first-child').html('Sea Lions 2016')

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'https://i.ytimg.com/vi/aIbeA4HsTZ4/hqdefault.jpg')
  })
$('img').on('onmouseleave', function(){
    return true
})

//RELEASE 5: Experiment on your own
    
    $('img').animate({
        borderWidth: '1px'
    })





})  // end of the document.ready function: do not remove or write DOM manipulation below this.
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
$('h1').first().css({'color': 'white', 'border': '1px solid black', 'visibility': 'initial'})
$('div h1:first-child').html('Sea Lions 2016').css({'color':'grey'})

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').on('mouseover', function(e){
    // e.preventDefault()
    $(this).attr('src', 'https://i.ytimg.com/vi/aIbeA4HsTZ4/hqdefault.jpg')
    $(this).fadeIn("slow")
  })
$('img').on('mouseleave', function(){
    $(this).attr('src', 'imgs/dbc_logo.png')
})

//RELEASE 5: Experiment on your own
$('div').append($('<div id="red-box"></div>'))
$('#red-box').css({'background': 'red', 'width': "100px", 'height': '100px', 'display': 'block-inline'})
$("#red-box").hover(function(){
    $(this).effect( "bounce", { times: 3 }, "slow" )
})

// $( document ).click(function() {
//   $( "#toggle" ).toggle( "bounce", { times: 3 }, "slow" );
// })



})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection

// What is jQuery?
// It's a JS library. Consists of an API written in JS.  

// What does jQuery do for you?
// It does the heavy lifting for you. Its reusable chuncks of code, with labels. In effect, they are an extension to the built-in functions in JS. 

// What did you learn about the DOM while working on this challenge?
// jQuery can be broadly used, but will its better to design to the DOM with class and id because targeting elements in the DOM is infinately easier by id and class than by general positioning HTML tags.
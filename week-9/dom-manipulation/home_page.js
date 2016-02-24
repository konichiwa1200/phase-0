// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:
// Done


// Release 1:
document.getElementById('release-0').className = 'done'




// Release 2:
document.getElementById('release-1').style.display = 'none'



// Release 3:
document.getElementsByTagName('h1')[0].innerHTML = "I completed release 2"



// Release 4:
document.getElementById('release-3').style.background = '#955251'



// Release 5:
var size = document.querySelectorAll('.release-4')
for (var i = 0; i < size.length; i++) {
    size[i].style.fontSize = '2em'
}
// for (var i in size) {
//     console.log(i)
//     size[i].style.fontSize = '3em'
// }

// Release 6
var hidden_template = document.getElementById('hidden')
document.body.appendChild(hidden_template.content.cloneNode(true))
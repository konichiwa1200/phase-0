// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Select the corrent name of the picture
// Goals: 
// 1. Click tiles and make them disappear
// 2. Keep count of clicks
// 3. Return true of false if guess is correct
//     3.1 show credits at the end

// Functions:
// Counter tracker
// Return credits
// Set links and image

// Pseudocode
// Counter tracker
// Return credits
// Set links and image

// Initial Code
// function call_id() {
//     var target_id = ""
//     onclick("target_id = this.id")
//     return target_id
// }

// var clicked_element = ""

// "tile-1".addEventListener(, function(event) {
    
// })
// window.onload = function() {
//     // var tile_selected = document.getElementById("tile-5")

//     // tile_selected.addEventListener("click", function() {
//     //     if(tile_selected.className == "tiles") {
//     //         tile_selected.className = "tiles hidden"
//     //     }
//     // })
// }
//     $(document).ready(function(){
//   $('#myid').bind('click', function(){
//      alert($(this).attr('id'));
//   });
// });
    
//     function call_id() {
//     var target_id = ""
//     onclick("target_id = this.id")
//     return target_id
//     }
// }

window.onload = function() {
    document.addEventListener("click", function(event) {
        console.log(event.target.id)
        update_counter(event.target.id)
        update_tile(event.target.id)
    })
    
    var counter = 1
    
    function update_counter(element_passed) {
        var element = document.getElementById("counter")
        var check_class = document.getElementById(element_passed)
        if (check_class.className == "tiles") {
            element.innerHTML = counter++
        }
    }
    
    function update_tile(element_passed) {
        var update_element = document.getElementById(element_passed)
        if(update_element.className == "tiles") {
            update_element.className = "tiles hidden"
        }
    }
}





// Reflection
//
//
//
//
//
//
//
//
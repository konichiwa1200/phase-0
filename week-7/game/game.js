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
    var counter = 1
    var pictures = {
        short_description: [
            "Across the Squinty Bridge",
            "Proboscis Monkey", 
            "House with Overcast Weather", 
            "Kalindi Khal Trek",
            "Supong Dam"
        ],
        picture_name: [
            "Across the Squinty Bridge",
            "Proboscis monkey (Nasalis larvatus) female Labuk Bay", 
            "Rechter zijgevel van boerderij en een houten bedrijfsgedeelte in het achterste gedeelte", 
            "", 
            "SupongDamAug2010-2", 
            ],
        credits: [
            "By Stephen Sweeney, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=14299933", 
            "By Charlesjsharp - Own work, from Sharp Photography, sharpphotography, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=41630516", 
            "By Rijksdienst voor het Cultureel Erfgoed, CC BY-SA 3.0 nl, https://commons.wikimedia.org/w/index.php?curid=24112611", "https://commons.wikimedia.org/w/index.php?curid=46974721",
            "By Jacky Lee - http://www.geolocation.ws/v/P/47493583/drain-off-floodwater/en, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=16238401", 
            ],
        address: [
            "https://commons.wikimedia.org/w/index.php?curid=14299933", 
            "https://commons.wikimedia.org/w/index.php?curid=41630516", 
            "https://commons.wikimedia.org/w/index.php?curid=24112611", 
            "https://commons.wikimedia.org/w/index.php?curid=46974721", 
            "https://commons.wikimedia.org/w/index.php?curid=16238401", 
            ],
    }
    
    setup()
    
    document.addEventListener("click", function(event) {
        update_counter(event.target.id)
    })
    
    function update_counter(element_passed) {
        var element = document.getElementById("counter")
        var check_class = document.getElementById(element_passed)
        if (check_class.className == "tiles") {
            element.innerHTML = counter++
            update_tile(element_passed)
        }
    }
    
    function update_tile(element_passed) {
        var update_element = document.getElementById(element_passed)
        if(update_element.className == "tiles") {
            update_element.className = "tiles hidden"
        }
    }
    
    function setup() {
        for (var i = 1; i < 5; i++) {
            var random_int = getRandomIntInclusive(0,7)
            var picture_label = document.getElementById("link" + i)
            picture_label.innerHTML = pictures.name[random_int]
            picture_label.href = pictures.name[random_int]
        }
    }
    
    function getRandomIntInclusive(min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    }
    
    function img_setup() {
        var random_picture = getRandomIntInclusive(1,4)
        var random_picture_url = document.getElementById("link" + random_picture).href
        document.getElementById("background_picture")
    }
    
    function evaluate_guess(element_passed) {
        var img = document.getElementById(element_passed)
        var guess = document.getElementById(element_passed)
        if ()
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
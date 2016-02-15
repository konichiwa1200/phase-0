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
window.onload = function() {
    // initialized the variables that will be used downstream
    var counter = 1
    var credits = ""
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
            "Across_the_Squinty_Bridge_-_geograph.org.uk_-_1554330.jpg",
            "Proboscis_monkey_(Nasalis_larvatus)_female_Labuk_Bay.jpg","Rechter_zijgevel_van_boerderij_en_een_houten_bedrijfsgedeelte_in_het_achterste_gedeelte_-_Ouderkerk_aan_de_Amstel_-_20409541_-_RCE.jpg",
            "WTK20150914-DSC_0017.jpg",
            "SupongDamAug2010-2.jpg",
            ],
    }
    
    // setup the picture and website
    setup()
    
    // register the click event, and pass info downstream
    document.addEventListener("click", function(event) {
        evaluate_guess(event.target.id)
    })
    
    // update counter
    function update_counter(element_passed) {
        var element = document.getElementById("counter")
        var check_class = document.getElementById(element_passed)
        // checks to see if we clicked a tile
        if (check_class.className == "tiles") {
            element.innerHTML = counter++
            update_tile(element_passed)
        }
    }
    
    // update tile classes
    function update_tile(element_passed) {
        var update_element = document.getElementById(element_passed)
        // make tile disappear
        if(update_element.className == "tiles") {
            update_element.className = "tiles hidden"
        }
    }
    
    // function that sets up the webpage
    function setup() {
        // randomize the possible links, there are 4 possibilities, thus value of 5
        for (var i = 1; i < 5; i++) {
            var random_int = getRandomIntInclusive(0,4)
            var picture_label = document.getElementById("link" + i)
            picture_label.innerHTML = pictures.short_description[random_int]
            picture_label.setAttribute("alt", pictures.short_description[random_int]) 
        }
        // calls function that will set up the background picture
        img_setup()
    }
    
    // function used for random integer selection
    function getRandomIntInclusive(min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    }
    
    // sets up background image
    function img_setup() {
        // variable used for cleaner downstream code
        var random_picture_index = getRandomIntInclusive(1,4)
        var random_picture_src = document.getElementById("link" + random_picture_index).getAttribute("alt")
        var background_picture = document.getElementById("background_picture")
        var random_alt_index = pictures.short_description.indexOf(random_picture_src)
        
        // set the background picture to one of the possible answers on the right
        background_picture.setAttribute("alt", random_picture_src)
        background_picture.setAttribute("src", "img/" + pictures.address[random_alt_index])
        
        // sets the value for picture credits
        credits = pictures.credits[random_alt_index]
    }
    
    // evaluates each click to determine if tile or guess was registered
    function evaluate_guess(element_passed) {
        // determines if a possible answer was clicked
        if (element_passed == "link1" || element_passed == "link2" || element_passed == "link3" || element_passed == "link4") {
            // variables for cleaner code
            var img = document.getElementById(element_passed).getAttribute("alt")
            var guess = document.getElementById("background_picture").getAttribute("alt")
            // user anwered correctly
            if (img == guess) {
                remove_tiles(element_passed, true)
            }
            // user answered incorrectly
            else {
                remove_tiles(element_passed, false)
            }
        }
        // tile covering image was clicked
        else {
            update_counter(element_passed)
        }
    }
    
    // function that removes visable tiles over image to reveal image
    function remove_tiles(element_passed, value) {
        // loop through tiles and add the hidden class to tiles on top of image
        for (var i = 1; i < 26; i++) {
            var check_tiles = document.getElementById("tile-" + i) 
            if (check_tiles.className == "tiles") {
                check_tiles.className = "tiles hidden"
            }
        }
        // calls function to give credits for the image revealed
        give_credits(element_passed, value)
    }
    
    // adds image credits to the webpage upon image reveal
    function give_credits(element_passed, value) {
        // adds credit info to DOM
        document.getElementById("credit_picture").innerHTML = credits
        // user answered correctly
        if (value == true) {
            document.getElementById("status").innerHTML = "Correct!"
            document.getElementById("credit_div").className = "correct_guess"
        }
        // user answered incorrectly
        else {
            document.getElementById("status").innerHTML = "Incorrect!"
            document.getElementById("credit_div").className = "incorrect_guess"
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
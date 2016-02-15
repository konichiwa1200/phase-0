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
            "Across_the_Squinty_Bridge_-_geograph.org.uk_-_1554330.jpg",
            "Proboscis_monkey_(Nasalis_larvatus)_female_Labuk_Bay.jpg","Rechter_zijgevel_van_boerderij_en_een_houten_bedrijfsgedeelte_in_het_achterste_gedeelte_-_Ouderkerk_aan_de_Amstel_-_20409541_-_RCE.jpg",
            "WTK20150914-DSC_0017.jpg",
            "SupongDamAug2010-2.jpg",
            ],
    }
    
    setup()
    
    document.addEventListener("click", function(event) {
        evaluate_guess(event.target.id)
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
            var random_int = getRandomIntInclusive(0,4)
            var picture_label = document.getElementById("link" + i)
            picture_label.innerHTML = pictures.short_description[random_int]
            picture_label.setAttribute("alt", pictures.short_description[random_int]) 
        }
        img_setup()
    }
    
    function getRandomIntInclusive(min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    }
    
    function img_setup() {
        var random_picture_index = getRandomIntInclusive(1,4)
        var random_picture_src = document.getElementById("link" + random_picture_index).getAttribute("alt")
        var background_picture = document.getElementById("background_picture")
        var randon_alt_index = pictures.short_description.indexOf(random_picture_src)
        background_picture.setAttribute("alt", random_picture_src)
        background_picture.setAttribute("src", "img/" + pictures.address[randon_alt_index])
    }
    
    function evaluate_guess(element_passed) {
        var img = document.getElementById(element_passed).getAttribute("alt")
        var guess = document.getElementById("background_picture").getAttribute("alt")
        if (img == guess) {
            console.log("correct")
            remove_tiles()
        }
    }
    
    function remove_tiles() {
        for (var i = 1; i < 26; i++) {
            var check_tiles = document.getElementById("tile-" + i) 
            if (check_tiles.className == "tiles") {
                check_tiles.className = "tiles hidden"
            }
        }
    }
    
    function give_credits() {
        
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
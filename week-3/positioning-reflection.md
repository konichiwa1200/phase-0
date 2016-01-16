#Positioning Reflection
---
###How can you use Chrome's DevTools inspector to help you format or position elements?
Because its a real-time rendering, we are able to see the outcome of changing layouts or formatting changes instantly. Additionally, there is the safety net that changes will only by restricted to the webpage instance, and no changes will be affected to the source code. This allows greater freedom to experiment with no fear of breaking your site. And in case there is some major adverse impact on your page, you can just reload the page; no harm done.

---
###How can you resize elements on the DOM using CSS?
By applying the height and width properties to the correct selector that we want to change. The height and width values can be declared in either relative terms or pixels.

---
###What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?
**Absolute** determines the position of the top left corner of the element from the point of origin. The point of origin which is the top left corner of the webpage. As a result, it will place the elements exactly where you want them on the webpage.

**Fixed** determines the position of the element as its going to be displayed on the browser window. That means that if the webpage is larger than the browser window, the element will stay fixed to the browswer window when the user scrolls up or down the page. 

**Static** determines the position of the element as they are presented in the DOM. This is the default setting, which results in elements stacking from top to bottom, leaving any space on the right side of the element blank and pushing any elements down to the next line.

**Relative** determines the position of the element based on where the previous element is positioned. That means, that if I have two boxes, box 1 and box 2, and I want to place box 1 inside box 2, box 2 coordinates would be relative to the browser window, and box 1 would be relative to the top left corner of box 1; Thus giving the illusion of box 1 inside box 2.

---
###What are the differences between margin, border, and padding?
**Margin** refers to the space between tag elements. This space would be similar to the casing and screen protector on your phone; you use a case to protect the phone from other elements, but still consider it part of the phone when you go and pick it up.

**Border** refers to the space that goes around the content and padding. In the above analogy, it would be the phone. 

**Padding** refers to the space around the content; that is the information of interest. Using the phone analogy, this would mean the motherboard and other peripherals that make the connections for the phone. The content would then be the software that runs the phone.

---
###What was your impression of this challenge overall? (love, hate, and why?)
The challenge was straight forward. The position was the most challenging aspect since there are inheritance properties that come into play when you want your layout to be a specific way. Because of the real-time rendering allowed by chrome dev tools, and its nice intellisense autocomplete, we were able to experiment with many properties. The nice thing about that, is that in order to see the changes on the webpage, we did not need to enter a value for a given property, all we had to do was hover with the arrow key the value of interest and the browser would render the change. Very python notebook like, which makes development less painful. The instant gratification really assists the development process.
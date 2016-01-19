#Challenge 4.2
###Release 1
What does puts do?
- puts returns `nil` and prints the output to the console/terminal followed by a `\n` character for a new line
What is an integer? What is a float?
- data type integers = stores whole real number
- data type float = stores number with decimal places
What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
- integers data type are used to store counting numbers (both positive and negative) while float data type stores number that has decimal places. 

---
###Release 2
**Hours in a year**

```ruby
hours = 24 * 365
p "There are #{hours} hours in a year"
```

**Minutes in a decade**

```ruby
minutes = 60 * 24 * 365 * 10 
p "There are #{minutes} minutes in a decade"
```

---
###Release 5
Challenge 4.2.1 (https://github.com/konichiwa1200/phase-0/blob/master/week-4/defining-variables.rb)
Challenge 4.2.2 (https://github.com/konichiwa1200/phase-0/blob/master/week-4/simple-string.rb)
Challenge 4.2.3 (https://github.com/konichiwa1200/phase-0/blob/master/week-4/basic-math.rb)

---
###Release 7
How does Ruby handle addition, subtraction, multiplication, and division of numbers?
- it follows the mathematical principles of priotiites:
	1. parenthesis
		1. left to right
	1. multiplication and division
		1. left to right
	1. addition and subtration
		1. left to right	
What is the difference between integers and floats?
- integers are counting numbers and floats are decimal numbers
What is the difference between integer and float division?
- integer division rounds down final result
What are strings? Why and when would you use them?
- a sequence of characters that can include latin character symbols inclosed in single or double quotes that many times represents human language
- good for storing names, descriptions, places; anything that can not be expressed by numbers
What are local variables? Why and when would you use them?
- variables who's scope is limited to the instance that they are called from
- good for storing data that changes during an instance but not required downstream of your method or program
How was this challenge? Did you get a good review of some of the basics?
- Great. Really refreshed on the basics of Ruby
# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].
# Myself
# 0. total Pseudocode
# make sure all pseudocode is commented out!
#####################PSEUDOCODE#############
# array input 

# initialize a {variable} that holds sum

# loop through each element in the array
# 	add each element to {variable}
# end loop

# return {variable}
###########################################

# Input: Array
# Output: number(either flaot or integer based on the )
# Steps to solve the problem.


# 1. total initial solution
def total(array)
	sum = 0
	array.each {|element| sum += element}
	sum
end
# 3. total refactored solution
def total(array)
	array.reduce(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array
# Output: String
# Steps to solve the problem.
# array [input]

# initialze variable with empty string

# loop through array 
# 	concat array elements and insert space between them
# end loop
# add period to array in string format
# capitalize first string in array[0]

# return variable

# 5. sentence_maker initial solution
def sentence_maker(array)
	sentence = ""

	array.each {|element| sentence += " #{element}"}

	sentence.lstrip!.capitalize!
	sentence +="."
end
# 6. sentence_maker refactored solution
def sentence_maker(array)
	sentence = array.join(" ")

	sentence +="."
	sentence.capitalize!
end

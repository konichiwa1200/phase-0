# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer (user selected or randomly renerageted)
# Output: symbol (low, high or correct)
# Steps:

# take number Input
# 	store for later comparison
# ask if solved
# take guess Input
# 	compare guess with number
# 		if guess is high
# 			return high, and give another chance
# 		if guess is low
# 			return low, and give another chance
# 		if guess is correct
# 			return correct, end game


# Initial Solution

class GuessingGame


	def initialize(answer)
		unless !answer.is_a? Numeric
			raise ArgumentError.new("Your array has no elements")
		end
		@number = answer
		@guess = nil
	end

	def guess(number)
		@guess = number
	end

	def check
		case 


end




# Refactored Solution






# # Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# When should you use instance variables? What do they do for you?
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

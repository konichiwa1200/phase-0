# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [1] hours on this challenge.

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

# class GuessingGame
#
# 	def initialize(answer)
# 		# checks to make sure number is entered as an answer
# 		unless answer.is_a? Numeric
# 			raise ArgumentError.new("Please provide an integer")
# 		end
# 		# initializes answer as class variable and makes sure its an integer
# 		# initializes guess to nil
# 		@answer = answer.to_i
# 		@guess = nil
# 	end
#
# 	def guess(guess)
# 		# checks guess to answer
# 		if guess > @answer
# 			@guess = :high
# 		elsif guess < @answer
# 			@guess = :low
# 		else
# 			@guess = :correct
# 		end
# 	end
#
# 	def solved?
# 		# checks value of guess variable
# 		@guess == :correct ? true : false
# 	end
#
# end

# Refactored Solution

class GuessingGame

	def initialize(answer)
		# checks to make sure number is entered as an answer
		unless answer.is_a? Numeric
			raise ArgumentError.new("Please provide an integer")
		end
		# initializes answer as class variable and makes sure its an integer
		# initializes guess to nil
		@answer = answer.to_i
		@guess = nil
	end

	def guess(guess)
		# checks guess to answer
		if guess > @answer
			@guess = :high
		elsif guess < @answer
			@guess = :low
		else
			@guess = :correct
		end
	end

	def solved?
		# checks value of guess variable
		@guess == :correct
	end

end

# # Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# They behave similar to real-life objects. That is, a string has a length, but it can not be divided by another string. Also the methods are performed on the object. That is relavent actions can be performed on the object. Its like the way intellisense works with some editors like Eclipse or Visual Studio; when you make an object and then place the period, only suggestions to the possible actions that the object can have at that point are visible.

# When should you use instance variables? What do they do for you?
# When the variable needs to be passed or processed to other methods within the class, for as long as the class instance is available. That is, when you need a variable whose scope is within the class that it got called from.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is the flow that logical operators use to evaluate a condition. There were no problems using flow control in this challenge.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Its due to the consistency property of symbols. They allow the programmer to have one object during the programs execution, even if that object has different contexts within the program. Its like a beach, on any given day, it can be a place to have a party, you can have a rally, or a place to exercise...based on the context that you are talking, but the location is still the same (as long as your talking about the same beach).

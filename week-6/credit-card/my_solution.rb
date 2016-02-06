# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: xin john zhang].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: integers
# Output: boolean
# Steps:
	# test length of Input
	# split input and place in array
	# convert array elements to integer
	# create second array containing double element input
	# split second array into elements
	# sum and check modulos and return boolean


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
	
# 	# initializates the necessary variables needed and checks the length of the input
# 	def initialize(number)
# 		@original = number.to_s.split("")
# 		@single = []
# 		@double = []

# 		unless @original.length  == 16
# 			raise ArgumentError.new("Your input is too long or too short, please enter a correct input")
# 		end
# 	end

# 	def check_card
# 		# splits input into two arrays based on digit indexing
# 		(0...16).each {|i| i % 2 == 0 ? @double << @original[i] : @single << @original[i]}

# 		# manipulates digits for that need to be doubled and split any two digit outcomes
# 		@double = @double.map{|element| element.to_i * 2}.join("").split("")

# 		# checks the modulos of 10 of the final sum
# 		(@double.map{|element| element.to_i}.reduce(:+) + @single.map{|element| element.to_i}.reduce(:+)) % 10 == 0
# 	end
# end

# check = CreditCard.new(4408041234567906)
# p check.check_card

# Refactored Solution

class CreditCard
  def initialize(number)
    @number = number.to_s
    
    unless @number.length == 16
      raise ArgumentError.new("Credit card number must be 16 digits")
    end
  end
  
  def double
    digits = @number.split("").map{|num| num.to_i}
    @doubles = digits.map.each_with_index {|value, index| index.even? ? value * 2 : value }
  end
  
  def add
    double.join("").split("").map{|num| num.to_i}.reduce(:+)
  end
  
  def check_card
   add % 10 == 0
  end
end

# Reflection
# What was the most difficult part of this challenge for you and your pair?
# 	Originally we felt were getting the challenge of just spliting it, but forgot to divide the digits into to arrays. Once the mistake was resolved, the rest of the challenge was a breeze.
# What new methods did you find to help you when you refactored?
# 	The .reduce method was very helpful. It creates a clean and readable code.
# What concepts or learnings were you able to solidify in this challenge?
# 	The division of the modulos and the Argument Error testing.

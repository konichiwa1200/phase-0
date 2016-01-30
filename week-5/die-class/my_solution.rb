# Die Class 1: Numeric

# I worked on this challenge [by myself, with: NA]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: size of die
# Output: side of die
# Steps:

	# initialize die
		# check for positive integer
	# roll random side
	# check die size

# 1. Initial Solution

# class Die
#   def initialize(sides)
#   	unless sides > 0
#   		raise ArgumentError.new("Enter a positive number")
#   	end
#     @sides = sides
#   end

#   def sides
#     @sides
#   end

#   def roll
#     (rand(sides) + 1).floor
#   end

# end

# 3. Refactored Solution
class Die
  attr_reader :sides

  def initialize(sides)
  	unless sides > 0
  		raise ArgumentError.new("Enter a positive number")
  	end
    @sides = sides
  end

  def roll
    (rand(sides) + 1).floor
  end

end

# # 4. Reflection
# What is an ArgumentError and why would you use one?
# Its a user-friendly message to the user when a error occurs due to a condition that was not met.
# Its used to inform the user that there was error an action that they just took in a non-verbose manner

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# The initialize method with an instance variable. Also the attr_reader. The random method was great too, althoght
# I initially set a seed for the random roll and that gave me an error.

# What is a Ruby class?
# Its a collection of methods that ultimately inherited from the object class. The ruby class can also pass down
# its methods to child classes.

# Why would you use a Ruby class?
# In order to have access to all the methods needed to complete a specific task. For example, if there is a need
# to populate a database with users, a ruby class users can be created where methods for adding, updating and 
# deleting users in the database are possible, among other things.

# What is the difference between a local variable and an instance variable?
# The local variable's scope is limited to the block of code from where it was called, while the instance variable's scope
# is limited to the instance it was called from.

# Where can an instance variable be used?
# Anywhere the object's refers to self. So if we initialize die10 = Die.new(10), @sides is limited to die10.
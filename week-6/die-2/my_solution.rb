# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: array consisting of list of sides for die
# Output: side of die
# Steps:
  # initialize die
    # check for positive integer
  # roll random side
  # set die size

# Initial Solution

# class Die
# 	def initialize(labels)
# 		# checks to see that input is not empty
# 		unless !labels.empty?
# 			raise ArgumentError.new("Your array has no elements")
# 		end
		
# 		# determines the how many sides are on the die and sets intance variable
# 		@sides = labels.length
# 		@labels = labels
# 	end

# 	def sides
# 		# returns the value of length
# 		@sides
# 	end

# 	def roll
# 		# generates a random number and uses that as an index to get it from the 
# 		@labels.sample(1)[0]
# 	end
# end

# Refactored Solution

class Die
	# returns the value of length
	attr_reader :sides

	def initialize(labels)
		# checks to see that input is not empty
		unless !labels.empty?
			raise ArgumentError.new("Your array has no elements")
		end
		
		# determines the how many sides are on the die and sets intance variable
		@sides = labels.length
		@labels = labels
	end

	def roll
		# generates a random number and uses that as an index to get it from the 
		@labels.sample(1)[0]
	end
end

# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# Difference was that instead of returning a random number, which needed special treatment to return a value that makes sense, this time, the sample method to was used which already has built-in function for random sampling, at least in ruby 2.3

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# That modularity allows for reusability. Also that with small changes, you can be up and running vs. starting from scratch.

# What new methods did you learn when working on this challenge, if any?
# None, I just used the one's that were used for sampling, and to make sure that since a sample returns an array, the index of the first element since that is what I really wanted, not the array

# # What concepts about classes were you able to solidify in this challenge?
# the attribute reader. Its tricky because I haven't used it as often as the other methods, so I still need to go through defining a method that returns an instance variable and then refactor it into an attribute reader. 



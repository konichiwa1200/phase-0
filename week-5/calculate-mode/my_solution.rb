# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
=begin
	take input as array
	make new hash
	iterate over array and update hash with count
	return most
=end
# 1. Initial Solution
def mode(input)
	item_count = {}
	input.each {|element| item_count[element] == nil ? item_count[element] = 1 : item_count[element] += 1}
	count_max = item_count.values.max
	item_count.select {|key, value| value == count_max}.keys
end

# p mode([1,2,3,3])         # => [3]
# p mode([4.5, 0, 0])       # => [0]
# p mode([1.5, -1, 1, 1.5]) # => [1.5]
# p mode([1,1,2,2])         # => [1,2]
# p mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
# p mode(["who", "what", "where", "who"]) # => ["who"]

# 3. Refactored Solution




# 4. Reflection

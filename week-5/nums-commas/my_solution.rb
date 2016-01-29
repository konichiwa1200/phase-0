# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? integer
# What is the output? (i.e. What should the code return?) string
# What are the steps needed to solve the problem?

# convert integer to string
# test length of string
# if under 4 
# 	return string
# else
# 	iterate every 3 digits and insert Commas
# 	return new string
# end

# 1. Initial Solution

# def separate_comma(number)
# 	number_string = number.to_s
# 	if number_string.length < 4
# 		number_string
# 	else
# 		array = number_string.split(//).reverse!
# 		size = number_string.length
# 		counter = 0
# 		new_array = []

# 		array.each do |element|
# 			new_array << element
# 			counter += 1
# 			if counter % 3 == 0 && counter < size
# 				new_array << ","
# 			end
# 		end
# 		new_array.reverse!.join
# 	end
# end

# 2. Refactored Solution
def separate_comma(number)
	number_string = number.to_s
	size = number_string.length

	if size < 4
		number_string
	else
		array = number_string.split(//).reverse!
		counter = 0
		new_array = []

		array.each do |element|
			new_array << element
			counter += 1
			new_array << "," if counter % 3 == 0 && counter < size
		end
		new_array.reverse!.join
	end
end



# 3. Reflection
# # What was your process for breaking the problem down? What different approaches did you consider?
# convert the string into an array so that iteration was possible. There were many possible approaches
# that were considered, like indexing the string, and using the .drop method for arrays, but each gave
# resulted in difficulties like being unable to collect the dropped elements when .drop was invoked. As 
# a result, the above was settled.

# # Was your pseudocode effective in helping you build a successful initial solution?
# Sort of since the pseudocode is the process that I use to tackle all challenges. But when the pseudocode
# was written, I also was thinking of using the .drop method, and when that didn't work, I had to resort
# to the familiar .each loop that got things to work.

# # What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# The .split method was used, and this was an interesting method. The ruby docs have great documentation and
# most importantly, they have plenty of examples and that is mostly what I followed.

# # How did you initially iterate through the data structure?
# Using the .each method for arrays

# # Do you feel your refactored solution is more readable than your initial solution? Why?
# Yes. But I would have liked the refactored solution to use regular expressions which would have definitely 
# made the code more readable, although more cryptic.
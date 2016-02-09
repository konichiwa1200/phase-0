# Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# First Person's solution I liked
#    What I learned from this solution
# Copy solution here:





# Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:
# def pad!(array, min_size, value = nil)
#   if array.length < min_size
#     (min_size - array.length).times { array << value }
#   end
#   array
# end

# # non-destructive version

# def pad(array, min_size, value = nil)
#   new_array = []
#   new_array += array
#   if array.length < min_size
#     (min_size - array.length).times { new_array << value }
#   end
#   new_array
# end



# My original solution:

def pad!(array, min_size, value = nil) #destructive
	# single if statement concats value array to original
	array.length < min_size ? array.concat(Array.new(min_size - array.length, value)) : array
end

def pad(array, min_size, value = nil) #non-destructive
	# makes new array so object_id is different
	new_array = array.collect{|x| x}
	
	# single if statement concats value array to original
	array.length < min_size ? new_array.concat(Array.new(min_size - array.length, value)) : new_array
end

# My refactored solution:




# 5. Reflection
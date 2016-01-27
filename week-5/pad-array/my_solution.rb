# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
=begin
  take length of array (input)

  check length of final array (output)

  check possible cases
    case output > input
      return input + extra = output
    case output =< input or 0
      return input

=end

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   if array.length < min_size
#     tmp = Array.new(min_size - array.length, value)
#     tmp.each {|element| array.push(element)}
#     array
#   else
#     array
#   end
# end

# def pad(array, min_size, value = nil) #non-destructive
#   if array.length < min_size
#     (0..min_size - 1).collect {|num| array[num] == nil ? value : array[num]}
#   else
#     new_array = array.collect {|x| x * 1}
#   end
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
    array.replace((0...min_size).collect {|num| array[num] == nil ? value : array[num]})
  else
    array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  if array.length < min_size
    (0...min_size).collect {|num| array[num] == nil ? value : array[num]}
  else
    new_array = array.collect {|x| x * 1}
  end
end

p pad!([1,2,3], 5)
p pad([1,2,3], 5, 'apple')

# 4. Reflection

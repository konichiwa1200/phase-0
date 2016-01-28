# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array, length of array, padding object
# What is the output? (i.e. What should the code return?)
# new array with padding
# What are the steps needed to solve the problem?
# check the original array versus padded size
# create a new array equal to the original
# if it's correct, do nothing
# Else, add padding to the end of the new array
# returning the new array

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   if array.length > min_size
#       array
#   else
#     tmp = Array.new(min_size - array.length, value)

#     tmp.each do |element|
#       array << element
#     end
#     array
#   end
# end

# def pad(array, min_size, value = nil) #non-destructive
#   if array.length > min_size
#     array.collect {|element| element}
#   else
#     tmp = Array.new(min_size - array.length, value)
#     new_array = []
#     array.each do |element|
#       new_array << element
#     end
    
#     tmp.each do |element|
#       new_array << element
#     end
#     new_array
#   end
# end
  
# p pad!([1,2,3], 1, 'apple')

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
      array.collect {|num| num}
    end
end

# 4. Reflection
# # Were you successful in breaking the problem down into small steps?
# Yes
# # Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Yes. It was a well thought out plan and it resulted in fast and quick success.

# # Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# No. At first we found challenging the non-destructive method to return our initial array. Once we looked at the documentation
# and experimented a little with the .collect method, we were able to overcome the initial errors.

# # When you refactored, did you find any existing methods in Ruby to clean up your code?
# Yes, the .collect and the .replace methods came in handy for both the destructive and the non-destructive methods

# # How readable is your solution? Did you and your pair choose descriptive variable names?
# Yes, we used variables that are descriptive. I think that we can still add comments to the steps so that if we decide
# to review this code, we will be able to quickly see what we did and use it or change it instead of going through
# line by line to get back in the thought that we were when we created it.

# # What is the difference between destructive and non-destructive methods in your own words?
# Destructive applies the changes in place, and changes the input you started with, while non-destructive changes a copy
# of your input, and thus if you need to look back at your original input, you can. That is not true with destructive methods.
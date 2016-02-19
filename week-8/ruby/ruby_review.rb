# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# iterate through input array
#     test conditions
# return result array


# Initial Solution

# def super_fizzbuzz(array)
#     array.map do |element|
#         if (element % 3 == 0 && element % 5 == 0)
#             element = "FizzBuzz"
#         elsif (element % 3 == 0)
#             element = "Fizz"
#         elsif (element % 5 == 0)
#             element = "Buzz"
#         else
#             element
#         end
#     end    
# end

# Refactored Solution
def super_fizzbuzz(array)
    array.map do |element|
        if (element % 3 == 0 && element % 5 == 0)
            element = "FizzBuzz"
        elsif (element % 3 == 0)
            element = "Fizz"
        elsif (element % 5 == 0)
            element = "Buzz"
        else
            element
        end
    end    
end

# Reflection
# What concepts did you review or learn in this challenge?
# The .map method. Also tried the case method, but did not function correctly.

# What is still confusing to you about Ruby?
# If a case statement is used in conjunction with the map method, it seems to evaluate every case function and then returns the else/default case, while the if case breaks out of the logic loop.

# What are you going to study to get more prepared for Phase 1?
# Rails and JS. 
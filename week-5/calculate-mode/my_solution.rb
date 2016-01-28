# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Kevin Sullivan]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array of integers, or Array of strings 
# What is the output? (i.e. What should the code return?) Array of most frequent values
# What are the steps needed to solve the problem?

# access each element of input array
#   if key exists 
#     increment value of key
#   else
#     add element to hash
#   end
# search hash for value
# return the key with greatest value

# 1. Initial Solution

# def mode(array)
#   result = {}
#   array.each do |element|
#     if result.has_key?(element)
#       result[element] += 1
#     else
#       result[element] = 1
#     end
#   end
#   count_max = result.values.max
  
#   answer = []
#   result.each do |key, value|
#     if value == count_max
#       answer << key
#     end
#   end

#   p answer
# end

# mode([1,2,3,4,5,])

# 3. Refactored Solution

  # p result.select {|key, value| key == count_max}.keys
  # # p result


# select {|key, value| block} → a_hash

def mode(array)
  result = {}
  array.each {|element| result.has_key?(element) ? result[element] += 1 : result[element] = 1}

  count_max = result.values.max
  
  result.select {|key, value| value == count_max}.keys

end

# # 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# A hash because of its key-pair relationship that would allow us to keep track of the instance count as we went.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# Sure. Pseudocode is still a challenge because of the way that I solve problems but its good to write it down in order to 
# convey the information. Its like a map, and that way people involved know where I am heading and why. 

# What issues/successes did you run into when translating your pseudocode to code?
# There were no issues because the pseudocode was simple and vague. But also because the challenge was simple enough that it
# would not require too much complexity to write down prior to coding. 

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We initially used the .each method for hashes and arrays to iterate through the input and stored hash. As we refactored, we use the select method
# to select specific elements from the hash that contained our data of interest. It was a little frustrating when I wrote some code and it didn't
# initially work as intended. But once I looked closely to the code, I realized that I was not collecting the right data, and once fixed, it was 
# all good to go. A nice and simple solution.
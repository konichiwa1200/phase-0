# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 3
def my_array_sorting_method(source)
  source.reject{|x| x.is_a? String}.sort + source.reject{|x| x.is_a? Numeric}.sort
end

def my_hash_sorting_method(source)
  source.to_a.sort_by {|name, age| age}
end

# Identify and describe the Ruby method(s) you implemented.
# method: .is_a? 
# description: method that evaluates the object's class and returns a boolean

# method: .sort
# description: sorts an array low to high by default. If we want to sort from high to low
# we would use a block to evaluate the elements. Example: source.sort {|x, y| y <=> x}. 

# method: .sort_by
# description: sorts a hash based on the criteria that we use and returns an multidimentional array.
# Example: source.sort {|key, value| key} will result in a sorting the hash from low to high by key. 
# If we use use the value, then it will be sorted low to high by value. If we use the <=> operator, 
# we can sort from high to low by key. Thus {|key, value| key <=> key} and {|key, value| value <=> value} 
# both return the same, an array that is sorted high to low based on hash key.

# method: .reject
# description: method that evaluates a condition on each element of the array and returns 
# a new array that excludes elements that evaluated true to the condition. For example,
# if we have an array = [1,2,3,4], array.reject{|num| num.even?} will return [1,3]

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#That there are many built in methods to ruby that can complete the task desired in 
#just one line of code. However, throughout the challenge, I kept looking sometimes
#for a solution that did not invoke calling an array, pushing elements into it and returning
#the result because I kept thinking that there was a built-in method already,
# yet sometimes I spent more time looking at the docs to see if there was a generic
# version, but after some time, I had to settle for my less than elegant solution
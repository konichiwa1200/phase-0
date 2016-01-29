# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  result = []
  source.each {|element| result << element.to_s if element.to_s.slice(thing_to_find) == thing_to_find }
  result
end

def my_hash_finding_method(source, my_family_pets_ages)
  source.select {|key, value| value == my_family_pets_ages}.keys
end

# Identify and describe the Ruby method(s) you implemented.
# method: .each
# description: iterates over array, performing code inside the curly braces
# 
# method: .to_s
# description: converts input into a string
#
# method: .slice
# description: selects the input passed to the method if the input exists in the 
# string. For example, if I pass a string, and I want to know if there that string
# the letters "au", with the slice method, "because".slice("au") == "au"
#
# method: .keys
# description: returns a new array that contains the keys from a hash

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  pos = source.select {|a| a.is_a? Numeric}
  pos.each {|x| source[source.index(x)] = source[source.index(x)] + 1}
  source
end

def my_hash_modification_method!(source, thing_to_modify)
  source = source.each {|key, value| source[key] = value + 2}
end

# Identify and describe the Ruby method(s) you implemented.
# method: .is_a? 
# description: method that evaluates the object's class and returns a boolean
#
# method: .index
# description: An array method that returns the index of the element in the array. For 
# example, if there is an array = [7,8,8,8,8,9], and we call array.index[9], the result will
# return 5, because array[5] = 9. Be careful, because if there are duplicate, it will return
# the index of the first index that it incounters. Also, the method will return nil if the
# value is not found in the array, i.e. array.index(-1) = nil 


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

# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.replace(source.reject{|element| element.to_s.slice(thing_to_delete) == thing_to_delete})
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete(thing_to_delete)
  source
end

# Identify and describe the Ruby method(s) you implemented.
# method: .reject
# description: method that evaluates a condition on each element of the array and returns 
# a new array that excludes elements that evaluated true to the condition. For example,
# if we have an array = [1,2,3,4], array.reject{|num| num.even?} will return [1,3]

# method: .to_s
# description: converts input into a string
#
# method: .slice
# description: selects the input passed to the method if the input exists in the 
# string. For example, if I pass a string, and I want to know if there that string
# the letters "au", with the slice method, "because".slice("au") == "au"

# method: .delete
# select: deletes the key-value pair in a hash that matches the key input.

# Person 5
def my_array_splitting_method(source)
  array = []
  array.push(source.select{|x| x.is_a? Numeric}).push(source.reject{|x| x.is_a? Numeric})
  array
end

def my_hash_splitting_method(source, age)
  array = []
  array.push(source.select{|key, value| value <= age}.to_a)
  array.push(source.select{|key, value| value > age}.to_a)
  array
end

# Identify and describe the Ruby method(s) you implemented.
# method: .reject
# description: method that evaluates a condition on each element of the array and returns 
# a new array that excludes elements that evaluated true to the condition. For example,
# if we have an array = [1,2,3,4], array.reject{|num| num.even?} will return [1,3]
#
# method: .is_a? 
# description: method that evaluates the object's class and returns a boolean
#
# method: .push
# description: Adds the elements inside the parenthesis to the selected array



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
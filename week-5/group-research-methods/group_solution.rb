# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  find_these = source.grep(/#{thing_to_find}/)

  find_these
end

def my_hash_finding_method(source, thing_to_find)
  pets = []
 ages = source.select{|x,y| pets << x if y == thing_to_find}
 pets
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
    source.map! do |n|
        if n.is_a? Integer
           n += thing_to_modify
        else
        n
      end
    end
end


def my_hash_modification_method!(source, thing_to_modify)
    source.select! do |k, v|
        source[k] = v += thing_to_modify
  end
  source
end
# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source.reject{|x| x.is_a? String}.sort + source.reject{|x| x.is_a? Numeric}.sort
end

def my_hash_sorting_method(source)
  source.to_a.sort_by {|name, age| age}
end


# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |a| a.include?(thing_to_delete) }
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |a,b| a == thing_to_delete}
end

# Identify and describe the Ruby method(s) you implemented.
# delete_if: checks the condition in the block for an array
# .include? : evaluates what is enclosed in the parenthesis returns a boolean
#


# Person 5
def my_array_splitting_method(i_want_pets)
  numbers=[]
  words=[]

  numbers = i_want_pets.select{ |x| x.is_a? Integer}
  words = i_want_pets.select{ |x| x.is_a? String}

  p Array[numbers, words]

end

def my_hash_splitting_method(my_family_pets_ages, age)
  yng_dogs = {}
  old_dogs = {}

  yng_dogs = my_family_pets_ages.select{ |name, years| years <= age }
  old_dogs = my_family_pets_ages.select{ |name, years| years > age }

  p [yng_dogs.to_a, old_dogs.to_a]

end

my_array_splitting_method(i_want_pets)
my_hash_splitting_method(my_family_pets_ages, 4)


# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I learned that the ruby docs can be vague ad the bst way to understand something is to try it out yourself. I also learned that among the different data structures many of the methods are the same or similar.
#
#
#
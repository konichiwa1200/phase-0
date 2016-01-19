# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# line 16
# 3. What is the type of error message?
# This is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter is missing an end statement
# 5. Where is the error in the code?
# The while loop does not have an end keyword
# 6. Why did the interpreter give you this error?
# Thw while loop does not have a closing end keyword

# --- error -------------------------------------------------------

south_park = true

# 1. What is the line number where the error occurs?
# line 36
# 2. What is the type of error message?
# undefined local variable
# 3. What additional information does the interpreter provide about this type of error?
# its an undefined variable or method in main
# 4. Where is the error in the code?
# line 36 calls on a variable but we have not initialized it
# 5. Why did the interpreter give you this error?
# line 36 calls on a variable but we have not initialized it

# --- error -------------------------------------------------------
def cartman()
	true
end
cartman()

# 1. What is the line number where the error occurs?
# line 51
# 2. What is the type of error message?
# undefined local variable
# 3. What additional information does the interpreter provide about this type of error?
# its an undefined variable or method in main
# 4. Where is the error in the code?
# line 51 calls on a method but we have that does not exist
# 5. Why did the interpreter give you this error?
# line 51 calls on a method but we have that does not exist

# --- error -------------------------------------------------------

def cartmans_phrase(phrase)
  puts "I'm not fat; I'm big-boned!"
  puts phrase
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# line 68
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# arguments passed = 1, arguments expecting = 0
# 4. Where is the error in the code?
# line 68, number of arguments the method takes is zero
# 5. Why did the interpreter give you this error?
# method accepts zero arguments, but when method is called, one argument is passed

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("f!@# you!")

# 1. What is the line number where the error occurs?
# line 92
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# arguments passed = 0, arguments expecting = 1
# 4. Where is the error in the code?
# line 92, number of arguments the method takes is one
# 5. Why did the interpreter give you this error?
# method accepts one argument, but when method is called, zero argument is passed



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# line 113
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# arguments passed = 0, arguments expecting = 1
# 4. Where is the error in the code?
# line 113, number of arguments the method takes is one
# 5. Why did the interpreter give you this error?
# method accepts two argument, but when method is called, one argument is passed

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# line 128
# 2. What is the type of error message?
# string can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# Its a TypeError
# 4. Where is the error in the code?
# in the string "Respect my authority!"
# 5. Why did the interpreter give you this error?
# We are trying to do math with a string and a number

# --- error -------------------------------------------------------

amount_of_kfc_left = 0


# 1. What is the line number where the error occurs?
# line 143
# 2. What is the type of error message?
# Trying to divide by zero
# 3. What additional information does the interpreter provide about this type of error?
#  ZeroDivisionError
# 4. Where is the error in the code?
# when we try to divide 20 by 0
# 5. Why did the interpreter give you this error?
# We can't divide by zero

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# line 159
# 2. What is the type of error message?
# cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
# LoadError and the file path
# 4. Where is the error in the code?
# the file that is required does not exist in the path expected by the interpreter
# 5. Why did the interpreter give you this error?
# It can't find the file in the same directory as the file error.rb 


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
# The first one because I was looking for the line number first, and then throughout the file to make sure that the method was not being called. Finally I realized that the while loop had not been ended completely. So the challenge was to make sure nothing downstream from where the method was invoked would affect the error.
# How did you figure out what the issue with the error was?
# Ruby has many things that are familiar with python, so its easier to track them down. And the interpreter is very helpful too...sometimes. But definitely more helpful than Java or C compiling.
# Were you able to determine why each error message happened based on the code? 
# For the most part, but also from previous encounters with some of the errors. The challenge was trying to figure out what the author of the code was trying to write for fixing the errors.
# When you encounter errors in your future code, what process will you follow to help you debug?
# Look at the line first, then the error description, then google
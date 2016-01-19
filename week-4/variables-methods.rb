def greeting
	puts "What is your first name?"
	first_name = gets.chomp.downcase.capitalize

	puts "What is your middle name?"
	middle_name = gets.chomp.downcase.capitalize

	puts "What is your last name?"
	last_name = gets.chomp.downcase.capitalize

	puts "Greetings #{first_name} #{middle_name} #{last_name}!"
end

def bigger
	puts "What is your favorite number?"
	num = gets.chomp.to_i

	bigger_num = num + 1

	puts "#{bigger_num} is a bigger and better number"
end

bigger


# Challenge 4.3.1 link https://github.com/konichiwa1200/phase-0/blob/master/week-4/address/my_solution.rb
# Challenge 4.3.1 link https://github.com/konichiwa1200/phase-0/blob/master/week-4/math/my_solution.rb

# How do you define a local variable?
	# Simply naming the variable and initializing it to the value of choice
# How do you define a method?
	# Using the keyword "def" followed by the name of the method and paramaters that it will take, if any, and finishing it with an "end" keyword
# What is the difference between a local variable and a method?
	# A variable only stores data, while a method is a sequence of code that will return an evaluated output
# How do you run a ruby program from the command line?
	# Type: ruby <file_name>
	# Must be *.rb file extension
# How do you run an RSpec file from the command line?
	# Type: rspec <file_name>
	# Must be *.rb file extension
	# rspec gem must be installed in ruby environment
# What was confusing about this material? What made sense?
	# Nothing was confusing thus far. Everything was a great refresher course.

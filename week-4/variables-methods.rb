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

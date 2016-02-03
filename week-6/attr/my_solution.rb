#Attr Methods

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# Pseudocode

# Input: none, built in
# Output: string
# Steps:
	# initialize name variable upon creating a class
	# make sure its readable from another class

	# initialize greeting by calling namedata class
	# print salutation

class NameData
	attr_reader :name
	def initialize
		@name = "Rene"
	end
end


class Greetings

	def initialize
		@namedata = NameData.new
	end

	def hello
		puts "Hello #{@namedata.name}! How wonderful to see you today."
	end
end

greet = Greetings.new
greet.hello


# Reflection

# What are these methods doing?
# 	initialize: initializes the instance variables with their initial values
# 	print_info: prints age, name, and occupation along with their corresponding variable values. It prints the information all at once, with a space in between each line of data
# 	what_is_age: returns the value of a@ge instance variable
# 	change_my_name=: changes the value of @age variable to the value that was passed to the method
# 	what_is_name:  returns the value of @name instance variable
# 	change_my_name=: changes the value of @name variable ot the value that was passed to the method
# 	what_is_occupation:  returns the value of @occupation instance variable
# 	change_my_occupation=: changes the value of @occupation variable ot the value that was passed to the method
	
# How are they modifying or returning the value of instance variables?
# 	The methods that return the value of the instance variable just do it by returning the variable in question
# 	The methods that modify the value of the instance variable use the new technique of appending the "equals" sign before the parenthesis and argument resulting in the ability to assign new values by simple assignment. 
# 		Example: Before if would be `instance_of_profile.change_my_name("Jodie")`
# 				 Now it looks like `instance_of_profile.change_my_name = "Jodie"`
# 		Simple assignment. It looks cleaner

# What changed between the last release and this release?
# 	The age attribute reader was added thus allowing us to remove the "what_is_name" method from the code.
# What was replaced?
# 	The what_is_name method from the instance_of_profile was replaced with .age method.
# Is this code simpler than the last?
# 	Yes

# What changed between the last release and this release?
# 	The addition of the age attribute writer thus allowing us to remove the "change_my_name" method from the code.
# What was replaced?
# 	The change_my_age method from the instance_of_profile was replaced with .age method.
# Is this code simpler than the last?
# 	Yes

# What is a reader method?
# 	Its a method that reads the value of an instance variable. 
# What is a writer method?
# 	Its a method that writes the value to an instance variable. 
# What do the attr methods do for you?
# 	It makes the code cleaner and easier to use.
# Should you always use an accessor to cover your bases? Why or why not?
# 	No. We must be careful to only give enough control to a class object as needed. Using accessor method will cause a security vulnerability. It would be better practice to use the reader method, and then write a writer method within the class, so that writing to an instance variable is only limited to within the class that its called from.
# What is confusing to you about these methods?
# 	Nothing so far. Just need more practice to get used to the new methods.

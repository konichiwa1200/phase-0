# Factorial

# I worked on this challenge [by myself, with: ].
#Myself, Luis Ybarra

# Your Solution Below
def factorial(number)
	value = 1
	if number == 0 || number == 1
		value
	else
		(2..number).each {|element| value *= element}
		value
	end
end

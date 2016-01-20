# Leap Years

# I worked on this challenge [by myself, with: ].
# myself

# Your Solution Below
def leap_year?(year)
	leap = false
	leap = true if year % 4 == 0 
	leap = false if year % 100 == 0
	leap = true if year % 400 == 0
	leap
end
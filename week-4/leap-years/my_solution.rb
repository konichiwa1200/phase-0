# Leap Years

# I worked on this challenge [by myself, with: ].
# myself

# Your Solution Below
def leap_year?(year)
	leap = false
	if year % 4 == 0 
		leap = true
		if year % 100 == 0
			leap = false
			if year % 400 == 0
				leap = true
			end
		end
	end
	leap
end

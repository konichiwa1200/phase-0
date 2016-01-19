# Calculate a Grade

# I worked on this challenge [by myself, with: ].
# Myself, Jones Melton

# Your Solution Below
def get_grade(average_grade)

  if average_grade >= 90
    "A"
  elsif average_grade < 90 && average_grade >= 80
    "B"
  elsif average_grade < 80 && average_grade >= 70
    "C"
  elsif average_grade < 70 && average_grade >= 60
    "D"
  elsif average_grade < 60 && average_grade >= 0
    "F"
  else "Invalid input"
  end
end
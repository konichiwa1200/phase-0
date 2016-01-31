# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def get_grade(grades)
	# calculate average
 	sum = grades.reduce(:+)
 	mean = sum / grades.length

 	# generate the rubric
 	grade_percent = [0, 60, 70, 80, 90]
 	grade_book = %w(F D C B A)

 	# test to determine what letter grade will be assigned
 	truth_test = grade_percent.map {|element| mean >= element}.reject{|element| element == false}.count
 	truth_result = truth_test - 1

 	# return the letter grade
	grade_book[truth_result]
end

# get_grade([80,90,60,60,90])
# 3. Refactored Solution



# 4. Reflection
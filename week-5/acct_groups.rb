# import challenge56.txt file with all of the students names
# users = []
# File.open("challenge56.txt", "r") do |aFile|
# 	aFile.each_line {|line| users << line}
# end

# # clean the data
# students = users.each {|values| values.strip!}.uniq!

# Pseudocode
# get data into array
# calculate size of cohort and how many groups to have
# test if groups * students per group == cohort size
# 	if not then adjust for the need to have uneven groups
# loop through array 
# 	randomly select students

# 	remove selected students from array

# This data will be used to make things run faster
users = ["Alivia Blount", "Alyssa Page", "Alyssa Ransbury", "Andria Reta", "Austin Dorff", "Autumn McFeeley", "Ayaz Uddin", "Ben Giamarino", "Benjamin Heidebrink", "Bethelhem Assefa", "Bobby Reith", "Robert Reith", "Dana Breen", "Brett Ripley", "Rene Castillo", "Justin J Chang", "Ché Sanders", "Chris Henderson", "Colette Pitamba", "Connor Reaumond", "Cyrus Vattes", "Dan Heintzelman", "David Lange", "Eduardo Bueno", "Liz Roche", "Elizabeth Roche", "FJ Collins Jr.", "Frankie Pangilinan", "Frances Pangilinan", "Ian Fricker", "Ian Thorp", "Ivy Vetor", "Jack Baginski", "Jack Hamilton", "Jillian Campbell", "John Craigie", "John Holman", "John Maguire", "John Pults", "Jones Melton", "Kenton Lin", "Kevin Serrano", "wolv", "Kevin Sullivan", "Kyle Rombach", "Laura Montoya", "Luis Ybarra", "Marti Osteyee-Hoffman", "Martina Osteyee-Hoffman", "Megan Swanby", "Mike London", "Michael London", "Michael Wang", "Michael Yao", "Mike Gwozdek", "Miqueas Hernandez", "Mitchell Kroska", "Norberto Caceres", "Patrick Skelley", "Peter Kang", "Philip Chung", "Phillip Barnett", "Pietro Martini", "Robbie Santos", "Rokas Simkonis", "Ronu Ghoshal", "Ronesh Ghoshal", "Ryan Nebuda", "Ryan Smith", "Saralis Rivera", "Sam Assadi", "Sepand Assadi", "Spencer Alexander", "Stephanie Major", "Taylor Daugherty", "Thomas Farr", "Maeve Tierney", "Tori Huang", "Alexander Williams", "Victor Wong", "Xin Zhang", "Zach Barton"]

# def cohort(role_call)
# 	role_call.shuffle!
# 	group1 = []
# 	group2 = []
# 	group3 = []
# 	group4 = []
# 	group5 = []
# 	group6 = []
# 	group7 = []
# 	group8 = []
# 	group9 = []
# 	group10 = []
# 	group11 = []
# 	group12 = []
# 	group13 = []
# 	group14 = []
# 	group15 = []
# 	group16 = []
# 	group17 = []

# 	(0...5).each do |element|
# 		group1 << role_call.pop
# 		group2 << role_call.pop
# 		group3 << role_call.pop
# 		group4 << role_call.pop
# 		group5 << role_call.pop	
# 		group6 << role_call.pop	
# 		group7 << role_call.pop
# 		group8 << role_call.pop
# 		group9 << role_call.pop
# 		group10 << role_call.pop
# 		group11 << role_call.pop
# 		group12 << role_call.pop
# 		group13 << role_call.pop
# 		group14 << role_call.pop
# 		group15 << role_call.pop
# 		group16 << role_call.pop
# 		group17 << role_call.pop

# 	end

# 	p group1
# 	p group2
# 	p group3
# 	p group4
# 	p group5
# 	p group6
# 	p group7
# 	p group8
# 	p group9
# 	p group10
# 	p group11
# 	p group12
# 	p group13
# 	p group14
# 	p group15
# 	p group16
# 	p group17
# end

# def cohort(role_call)
# 	size_group = 5
# 	total_groups = 14
# 	role_call.shuffle!

# 	cohort_groups = Array.new(total_groups) {Array.new(size_group)}

# 	for i in (0...total_groups)
# 		for j in (0...size_group)
# 			if role_call.length > 0
# 				cohort_groups[i][j] = role_call.pop
# 				j += 1
# 			else
# 				j += 1
# 				break
# 			end
# 		end
# 		i += 1
# 	end
# 	p cohort_groups
# end

def cohort(role_call)
	size_group = 5
	total_groups = role_call.length / size_group
	role_call.shuffle!

	cohort_groups = Array.new(total_groups) {Array.new(size_group)}

	(0...total_groups).each do |item1|
		(0...size_group).each do |item2|
			cohort_groups[item1][item2] = role_call.pop
		end
	end
	(0...total_groups).each {|group| p cohort_groups[group]}

end

cohort(users)

#Reflection
# What was the most interesting and most difficult part of this challenge?
# I got stuck with a variable name on line 93, and it kept saying wrong number of arguments. It turned out
# that I was calling "cohor" on line 93, but the variable that I was supposed to call was "cohort_groups". 
# That through me off for about an hour, and then when I finally caught it, it became way easier.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# No. I rarely use pseudocode and it has been difficult to use, because I have a style of coding that involves
# getting from point a to point be, and being very fluid about it. Originally I wanted to use a loop to create
# empty arrays but once I tried and then I read through the docs, I found out that there was no way to do what
# I wanted to do. All I could do was set an instance variable of a class variable, but since we are still not
# there yet, I didn't want to do it that way.

# Was your approach for automating this task a good solution? What could have made it even better?
# I could have incorporated a gets.chomp method for the group size determination, that way the user can determine
# the size of each group. Also, I don't check to see if all of the students are assigned to a group, or if there
# won't be enough students to fill each group; currently all groups have 5 users, but I think its because there
# are a few students not being assigned.

# # What data structure did you decide to store the accountability groups in and why?
# A two dimentional array, but now reflecting, I could have used a hash table. A 16 x 5 matrix was used because
# at the time of writing the code, this seemed a good use for iteration. But now, I can see that using an array
# with all of the names of the groups, and then using that as a key, and sampling from the students array might
# have been a better solution. Plus the printing of the users would have been easier, and more readable.

# # What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I used the .pop method which was the first time I used it. The .shuffle method was a first, although if there 
# was an easier way to get a non-duplicate sample like in R, that would have made things better.

# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
	# generate random letter from array spelling bingo and store in variable
	# generate random number from range 1-100 and store in variable

# Check the called column for the number called.
	# loop through arrays and find number using index notation

# If the number is in the column, replace with an 'x'
	# set element to X string using index notation

# Display a column to the console
	# use a loop to print each column to console

# Display the board to the console (prettily)
	# use the 'puts' method

# Initial Solution

# class BingoBoard

# 	attr_accessor :bingo_board
# 	attr_reader :letter, :number

# 	def initialize(board)
# 		@bingo_board = board
# 		@letter = nil
# 		@number = nil
# 	end

# 	def call
# 		@bingo = {'B'=>0,'I'=>1,'N'=>2,'G'=>3,'O'=>4}
# 		@letter = rand(5) #4
# 		@number = rand(100) + 1 #88
# 		puts "Letter #{@bingo.key(@letter)}#{@number}"
# 	end

# 	def check
# 		@bingo_board.each do |array| 
# 			if array[@letter] == @number
# 				array[@letter] = 'X'
# 				p array
# 			else
# 				p array
# 			end
# 		end
# 	end

# end

# Refactored Solution
class BingoBoard
	# initialize necessary variables
	def initialize(board)
		@bingo_board = board
		@letter = nil
		@number = nil
		@legal = []
	end

	def call
		# makes hash for letter reference
		@bingo = {'B'=>0,'I'=>1,'N'=>2,'G'=>3,'O'=>4}
		# @letter = 4 #used for testing purposes
		# @number = 88 #used for testing purposes

		# generates random numbers needed and prints them to console
		@letter = rand(5)
		@number = rand(100) + 1
		puts "Letter #{@bingo.key(@letter)}#{@number}"
	end

	def check
		# checks to see if there is a hit and prints board to console
		@bingo_board.each {|array| array[@letter] = 'X' if array[@letter] == @number}
		@bingo_board.each {|row| p row}
	end

	def bingo_board
		# makes array of 5 elements 5 times
		5.times do |element|
			temp = []
			temp << rand(1..15)
			temp << rand(16..30)
			temp << rand(31..45)
			temp << rand(46..60)
			temp << rand(61..75)
			@legal << temp
		end
		# adds the free space at the middle and prints board
		@legal[2][2] = "Free"
		@legal.each {|row| p row}
	end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

# new_game.call
# new_game.check
new_game.bingo_board

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# 	Very, its difficult to sit and do nothing. Get your hands dirty, then you adapt with the flow.
# What are the benefits of using a class for this challenge?
# 	The entire activity is sandboxed in one thing, that allows you to have a clean grasp of where things are going. Its like a preparation for bigger things to come where keeping an organized environment will come in handy.
# How can you access coordinates in a nested array?
# 	By calling the index of the outer array followed by the index of the nested array
# What methods did you use to access and modify the array?
# 	Used the .each method followed by the array indexed notation
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# 	The .find method for an enumarable, which returns the element from an array that matches your criteria. I did not use it because I was unable to assign the value in one line, there for I went with the simple method.
# How did you determine what should be an instance variable versus a local variable?
# 	Originaly I thought that I needed to read my variables further downstream and that is why I decided to use instance variables. I also needed the varaible to have scope into each method and an instance variable provided that.
# What do you feel is most improved in your refactored solution?
# 	Adding legal board method
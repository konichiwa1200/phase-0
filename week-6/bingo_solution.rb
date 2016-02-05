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

	def initialize(board)
		@bingo_board = board
		@letter = nil
		@number = nil
	end

	def call
		@bingo = {'B'=>0,'I'=>1,'N'=>2,'G'=>3,'O'=>4}
		@letter = rand(5) #4
		@number = rand(100) + 1 #88
		puts "Letter #{@bingo.key(@letter)}#{@number}"
	end

	def check
		@bingo_board.each {|array| array[@letter] == @number ? array[@letter] = 'X', p array : p array}
	end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check


#Reflection
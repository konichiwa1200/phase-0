# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode





# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
class BingoScorer

  def initialize(board)
    @board = board
  end

  def check_board
    # check_hoz
    # check_ver
    check_right
    # check_left
  end
  
  def check_hoz
    count = 0
    @board.each {|row| row.each {|element| element == 'x' ? count += 1 : count += 0}}
    count == 5
  end
  
  def check_ver
    find_x = @board[0].index('x')
    count = 0
    @board.each {|row| row[find_x] == 'x' ? count += 1 : count += 0} 
    count == 5
  end
  
  def check_right
    diagonal = (0...5).to_a
    count = 0
    diagonal.each {|element| @board[element][element] == 'x' ? count += 1 : count += 0} 
    count == 5
  end
  
  def check_left
    diagonal = (0...5).to_a
    # count = 0
    # diagonal.each {|element| @board[element][(-element) - 1] == 'x' ? count += 1 : count += 0} 
    diagonal.each {|element| puts "element: #{element}; - element: #{-element}"} 
    
    # count == 5
  end
  
end

# new_game_hor = BingoScorer.new(horizontal)
# p new_game_hor.check_board

# game_ver = BingoScorer.new(horizontal)
# p game_ver.check_board

game_rig = BingoScorer.new(right_to_left)
p game_rig.check_board

game_lef = BingoScorer.new(left_to_right)
p game_lef.check_board
# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:


# Reflection
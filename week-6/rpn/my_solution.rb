# Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class RPNCalculator
	def initialize
		@num1 = 0
		@num2 = 0
		@sum = 0
		@operator = nil
	end

	def split_string(str)
		@array = str.split(" ").map.each_with_index{|value, index| index == 2 ? value : value.to_i}
		@operator = @array[-1]
		@num1 = @array[0]
		@num2 = @array[1]
	end

	def operator
		case @operator
		
		when "-"
			@sum = @num1 - @num2
		
		when "+"
			@sum = @num1 + @num2
		
		when "/"
			@sum = @num1 / @num2
		
		when "*"
			@sum = @num1 * @num2
		
		when "%"
			@sum = @num1 % @num2
		end
	end

	def evaluate(input)
		self.split_string(input)
		if @array.length > 3
			@sum
		else
			self.operator
			@sum
		end
	end


end

# calc = RPNCalculator.new

# p calc.evaluate('1 2 +')   # => 3
# p calc.evaluate('2 5 *')   # => 10
# p calc.evaluate('50 20 -') # => 30


# 4. Refactored Solution






# Reflection
# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

# p array[1][2][0]
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each {|num| num.kind_of?(Array) ? num.each{|element| element*5} : num*5}


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# adds "ly" to the end of each string element in the array
def generator(list)
	# determined the number of layers by looking at the array and counting how many 
	# nested arrays there were
	list.map do |first_layer|
		if first_layer.kind_of?(String) #tested for string, but if tested for Array, then it would be the else's statements in the if's and vice versa
			first_layer = first_layer + "ly"
		else
			first_layer.map do |second_layer|
				if second_layer.kind_of?(String)
					second_layer = second_layer + "ly"
				else
					second_layer.map do |third_layer| 
						third_layer = third_layer + "ly"
					end
				end
			end
		end
	end
end

# p generator(startup_names)

# # Reflect
# What are some general rules you can apply to nested arrays?
# 	Test to see if they are arrays within arrays. If so, keep nesting your tests until you get to the most inner nested array. The number of test to perform equals the number of nested arrays. Keeping track of what each loop is being passed will have a great impact on your productivity.
# What are some ways you can iterate over nested arrays?
# 	Using the each method, or the map method. We can also use the range method to iterate through the indexs and passing an integer to the variables to access each of the elemnts in the array. That method will alter the way that it would be accessed. Example is array[j][k][i], but this method, especially if copied to another array, will produce a flat array. Which is the last way that I would access it. Again, if I didnt care about the structure of the data, then flatting the array would be the fastest and easiest way. 
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# 	I stuck to the mighty .each method because it leaves a clean and clear outline of what I am doing. And when I was creating the variables for each loop, I gave them descriptive names to keep it clean and readable. The other methods that I looked at did not give me the control that I wanted. I did want to use the .flatten method, but I think the challenge wanted to keep the structure of the data in tacked.

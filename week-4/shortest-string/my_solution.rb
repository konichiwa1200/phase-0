# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
# def shortest_string(list_of_words)
# 	if list_of_words.length == 0
# 		nil
# 	elsif list_of_words[0] == list_of_words['']
# 		''
# 	else
# 		array_size = list_of_words.length
# 		word_position = 0
# 		word_length = 1000

# 		for word in list_of_words
# 			if word_length  word.length
# 				word_length = word.length
# 			end
# 			word_position += 1
# 		end
# 		list_of_words[word_position]
# 	end
# end

def shortest_string(list_of_words)
	if list_of_words.length == 0
		list_of_words[0]
	elsif list_of_words.length == 1
		list_of_words[0]
	else
		word_length = 1000
		short_word = ""

		list_of_words.each do |word|
			if word_length > word.length
				word_length = word.length
				short_word = word
			end
		end
		short_word
	end
end
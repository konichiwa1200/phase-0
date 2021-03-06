## Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
	if list_of_words.length == 0 || list_of_words.length == 1
		list_of_words[0]
	else 
		word_length = 0
		longest_word = ""

		list_of_words.each do |word|
			(longest_word = word) && (word_length = word.length) if word_length < word.length
		end
		longest_word
	end
end
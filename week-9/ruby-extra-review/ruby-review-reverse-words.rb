# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution
# def reverse_words(phrase)
#     phrase_array = phrase.split(' ')
#     phrase_array.map{|word| word.reverse()}.join(" ")
# end

# puts reverse_words("This is a test")
# puts reverse_words("Why NOt")
# puts reverse_words("abcdefg")



# Refactored Solution
def reverse_words(phrase)
    phrase.split(' ').map{|word| word.reverse()}.join(" ")
end




# Reflection
# What concepts did you review in this challenge?
# What is still confusing to you about Ruby?
# What are you going to study to get more prepared for Phase 1?
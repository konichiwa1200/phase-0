# Numbers to English Words
# Pseudocode
# Create hash with conversion
# Convert input to string and split to individual characters
# test special cases
#     teens
#     hundreds
# convert character to words
# join words and return result

# Initial
def in_words(number)

    numbers_single_digits = {
        "0" => "zero",
        "1" => "one",
        "2" => "two",
        "3" => "three",
        "4" => "four",
        "5" => "five",
        "6" => "six",
        "7" => "seven",
        "8" => "eight",
        "9" => "nine"
    }

    numbers_teen_digits = {
        "0" => "ten",
        "1" => "eleven",
        "2" => "twelve",
        "3" => "thirteen",
        "4" => "fourteen",
        "5" => "fifteen",
        "6" => "sixteen",
        "7" => "seventeen",
        "8" => "eighteen",
        "9" => "nineteen"
    }

    numbers_double_digits = {
        "2" => "twenty",
        "3" => "thirty",
        "4" => "fourty",
        "5" => "fifty",
        "6" => "sixty",
        "7" => "seventy",
        "8" => "eighty",
        "9" => "ninety"

    }
    numbers_large_digits = ["", "", "hundred", "thousand"]

    num_array = number.to_s.split("")
    num_len = num_array.length

    if number < 10
        numbers_single_digits[num_array[0]]
    elsif number < 20
        numbers_teen_digits[num_array[1]]
    elsif number < 100
        if (num_array[1] == '0')
            numbers_double_digits[num_array[0]]
        else
            numbers_double_digits[num_array[0]] + " " + numbers_single_digits[num_array[0]]
        end
    else
        "I don't know how to count that high"
    end

end




p in_words(0) 
p in_words(10) 
p in_words(12) 
p in_words(29) 
p in_words(20) 
p in_words(99) 
p in_words(65) 
p in_words(100) 


# Refactored


# Reflection
# What concepts did you review in this challenge?
# What is still confusing to you about Ruby?
# What are you going to study to get more prepared for Phase 1?
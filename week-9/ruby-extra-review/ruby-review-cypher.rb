# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# -- defines method
# def dr_evils_cipher(coded_message)
#     # -- makes every character smaller case and splits it by character
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  
#     # -- makes empty array
#   decoded_sentence = []
    
#     # -- creates hash for character shift
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   # -- loops through each character in cyphered array
#   input.each do |x| # What is #each doing here?
  
#     # -- sets variable found_match to FALSE
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    
#     # -- loops through each key in cypher hash
#     cipher.each_key do |y| # What is #each_key doing here?
    
#       # -- "x" is the cyphered letter and "y" is the decyphered letter
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
      
#         # -- pushes decyphered letter to array
#         decoded_sentence << cipher[y]
        
#         # -- sets found_match variable to true
#         found_match = true
        
#         # -- breaks out of the loop to proceed to the next letter
#         break  # Why is it breaking here?
        
#       # -- testing if cyphered letter is special symbol
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        
#         # -- pushes decyphered letter to array
#         decoded_sentence << " "
        
#         # -- sets found_match variable to true
#         found_match = true
        
#         # -- breaks out of the loop to proceed to the next letter
#         break
        
#       # -- checks to see if number is included
#       # -- creates an array of numbers 0 to 9 inclusive
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
      
#         # -- pushes decyphered letter to array
#         decoded_sentence << x
        
#         # -- sets found_match variable to true
#         found_match = true
        
#         # -- breaks out of the loop to proceed to the next letter
#         break
#       end
#     end
    
#     # -- pushes cyphered letter to array if it wasn't able to decypher it
#     # -- looking for punctuation marks
#     if not found_match  # What is this looking for?
#       decoded_sentence << x
#     end
#   end
  
#   # -- joins decyphered character into sentence and returns it
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning?
#   # -- returning a string phrase
# end

# Your Refactored Solution
def dr_evils_cipher(phrase)
    str_array = phrase.downcase.split("")
    
   str_array.map do |char|
        num_val = char.ord
        if num_val > 96
            phrase[char] = (((phrase[char].ord - 97 - 4) % 26) + 97).chr
        elsif num_val >= 64 && num_val <= 94 || num_val >= 34 && num_val <= 42 
            phrase[char] = 32.chr
        else
            phrase[char]
        # elsif num_val >= 44 && num_val <= 63 || num_val == 33
        #     phrase[char]
        # else
        #     phrase[char] = 32.chr
        end
    end.join("")
   
end

# p dr_evils_cipher("m^aerx%e&gsoi!") #This is driver test code and should print true



# Driver Test Code:
# p dr_evils_cipher("m^aerx%e&gsoi!") #This is driver test code and should print true

# p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# # Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
# p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
# &fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
# p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
# p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
# @m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
# p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!
puts dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
puts dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
puts dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
puts dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
puts dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")
# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [
  [1,2], 
  ["inner", 
    ["eagle", "par", 
      ["FORE", "hook"]]]]

# attempts:
# ============================================================

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

number_array.map! do |element|
        if element.kind_of?(Array)
          element.map! {|element| element = element + 5}
        else element = element + 5
        end 
end 

p number_array 
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def generator(list)
  list.map do |first_layer|
    if first_layer.kind_of?(String)
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

end

def generator_three(list)
  list.map do |first_layer|
    if first_layer.kind_of?(String)
      first_layer = first_layer + "ly"
    else
    generator_three(first_layer)
    end
  end
end
  

p generator_three(startup_names)
#create a list
  $grocery_list = {}

#add item to list
  def add_item()
    puts "Enter item: "
    item = gets.chomp
    puts "Quantity of item: "
    quantity = gets.chomp
    while quantity.empty?
      puts "Enter a valid quantity"
      quantity = gets.chomp
    end
    
    $grocery_list[item] = quantity
  end

#remove item from list
  def remove_item()
    puts "Remove item: "
    item = gets.chomp
    $grocery_list.delete(item)
  end
    
#update item from list
  def update_grocery_list()
    puts "Which item do you want to update?"
    item = gets.chomp
    puts "What is the new quantity?"
    quantity = gets.chomp
    $grocery_list[item] = quantity
  end

#print item from list
  def print_grocery_list()
    puts "Your shopping list: "
    $grocery_list.each { |item, quantity| puts "#{quantity} : #{item}" }
  end

=begin

What did you learn about pseudocode from working on this challenge?
- Good pseudocode makes things the challenge go much easier

What are the tradeoffs of using Arrays and Hashes for this challenge?
- We used hashes because we needed to store key-value pairs. That is each piece of 
information that we were going to collect needed to be associated with something, 
so it made perfect sense to just use hashes. But, if we were just interested in
collecting data with no association between each other, then we would have used arrays.

What does a method return?
- it returns the last object that was called. In our case, we called the each method on the hash we 
craeted and thus returned the hash at the very end.

What kind of things can you pass into methods as arguments?
- rather than passing arguments to our methods, we decided to get user input to make things more
effective when adding things to the hashes. But we could have passed arguments to our methods
and it would have created a quicker data entry, but we would have needed to explain the arguments
that would be expected, otherwise it would have been difficult.

How can you pass information between methods?
- using a global variable allows us to call the variable from within the methods. 

What concepts were solidified in this challenge, and what concepts are still confusing?
- Everything was great and a good way to tie things and concepts learned throughout last week.
There should be more information about variables within last week, and more emphasis on the 
good practices and not so good practices of using local, class, and global variables. But, still,
nothing was confusing at this point.

=end

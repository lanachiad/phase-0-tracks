# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the input into individual items in an array
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(items)
	item_list = items.split(' ')
	quantity = 1
	grocery_list = {}
	item_list.each do |item|
		grocery_list[item] = quantity
	end
	p grocery_list
end

grocery_list = create_list("apples bananas chicken bread")

# Method to add an item to a list
# input: list, item name, and quantity
# steps: push input into the list
# output: updated list

def add_item(list, item, quantity)
	list[item] = quantity
	list
end

grocery_list = add_item(grocery_list, "peanut butter", 1)

# Method to remove an item from the list
# input: list, item name
# steps: remove input from the list
# output: updated list

def remove_item(list, item)
	list.delete(item)
	list
end

grocery_list = remove_item(grocery_list, "chicken")

# Method to update the quantity of an item
# input: list, item name, and updated quantity
# steps: locate item name from list, update the quantity for that item based on input
# output: updated list

def update_quantity(list, item, quantity)
	list[item] = quantity
	list
end

grocery_list = update_quantity(grocery_list, "bread", 3)

# Method to print a list and make it look pretty
# input: list
# steps: print the list
# output: the list

def print_list(list)
	list.each do |item, quantity|
		puts "You need #{quantity} #{item}(s)"
	end
end

print_list(grocery_list)


=begin 

1. What did you learn about pseudocode from working on this challenge?
I learned that it can be a serious life saver when it comes to creating the actual method. Good pseudo should make development a cake walk.

2. What are the tradeoffs of using arrays and hashes for this challenge?
Arrays are good if you just wanted to store the items individually, but hashes made it easy to associate the item with the unique quantity each one had. However, I did realize it was very easy to turn an array of items into a hash by iterating over it.

3. What does a method return?
Methods return an updated list. I learned that with each add, remove, and update method, I was able to autosave a new grocery_list without having to do "grocery_list ="

4. What kind of things can you pass into methods as arguments?
What can't you? Just kidding. You can call variables, arrays, and hashes for sure. 

5. How can you pass information between methods?
By calling the method with the parameters/arguments and storing it as a variable outside the method. Then you can use that variable in other methods and manipulate the result in other methods.

6. What concepts were solidified in this challenge, and what concepts are still confusing?
I feel like I understand methods a little more, and I got good experience manipulating hashes. I did find that I've been confusing array syntax and hash syntax a little bit, but my guide was very helpful in explaining where I'm confusing the two and what happens when I do, which helped me a ton during this challenge.

=end 
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

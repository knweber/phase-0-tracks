#Release 0 -- Pseudocode

# Method 1: create new list
# 	Input: string of items separated by spaces
# 	Steps:
# 		1. Define our method --> method(x,y,z=1)
# 		2. Create empty hash, grocery_list
# 		3. Get user input (ask user for string of items) 
# 		4. split string by whitespace
# 		5. Store items in array
# 		6. Iterate over array, adding each to hash with default value of 1
# 	Output: hash

# Method 2: add item to list
# 	Input: list, item name, optional quantity
# 	Steps:
# 		1. Define method using hash as argument
# 		2. One more required argument (item to add), one optional argument (quantity)
# 		3. Add the item and its optional quantity to our hash
# 	Output: store item name with optional quantity in hash

# Method 3: remove item from list
# 	Input: selected key from hash, e.g. hash["carrots"], to delete
# 	Steps:
# 		1. Take hash and item (key) to delete as argument
# 		2. Delete item from hash using the key indicated
# 	Output: modified hash without the selected key/value pair

# Method 4: Update quantities for items in list
# 	Input: select key whose value we wish to change and provide updated quantity
# 	Steps: 
# 		1. Take the hash, a particular key, and an updated value as arguments
# 		2. Reassign new value to old value for key
# 	Output: modified hash with the updated quantity (value) of the chosen key

# Method 5: Print list
# 	Input: hash
# 	Steps:
# 		1. iterate through hash and print out each key/value pair to user-friendly list
# 	Output: interpolated key and value in string --> "#{item_name}: #{quantity}"

#Release 1 -- Initial Solution

#Method 1

def new_list(str,n=1)
	list = {}
	items = str.split(" ")
	items.each do |item|
		list[item] = n
	end
	list
end

# my_list = new_list("apples oranges bananas")
# your_list = new_list("hummus carrots")
# p my_list
# p your_list

#Method 2 --> REFACTORED; COMBINED WITH METHOD 4 (add items AND update quantities -- I realized that I wasn't even using this method in my driver code, and so it probably is not necessary)

# def add_item(list,item,n=1)
# 	list[item] = n
# 	list
# end

# my_list = add_item(my_list,"peaches",3)
# my_list = add_item(my_list, "pineapple",2)
# p my_list
# your_list = add_item(your_list,"pita")
# p your_list

#Method 3

def remove_item(list,item)
	list.delete(item)
	list
end

# my_list = remove_item(my_list,"apples")
# p my_list
# your_list = remove_item(your_list,"hummus")
# p your_list

#Method 4 (now serves the purpose of method 2 as well)

def update_quantities(list,item,n=1)
	list[item] = n
	list
end

# my_list = update_quantities(my_list,"oranges",7)
# p my_list
# your_list = update_quantities(your_list,"pita",4)
# p your_list

#Method 5

def print_list(list)
	list.each do |item,quantity|
		puts "#{item}: #{quantity}"
	end
end

# print_list(my_list)
# print_list(your_list)

#Release 2 -- Test

my_list = new_list("lemonade tomatoes onions ice_cream")

my_list = update_quantities(my_list,"lemonade",2)
my_list = update_quantities(my_list,"tomatoes",3)
my_list = update_quantities(my_list,"ice_cream",4)

my_list = remove_item(my_list,"lemonade")

my_list = update_quantities(my_list,"ice_cream",1)

print_list(my_list)

#Release 4 -- Reflect (Kris' reflections)
# 1. What did you learn about pseudocode from working on this challenge?
	# I learned that the more specific the pseudocode, the more helpful it is in building the actual code. My pair and I first went through each method and wrote what we expected the input and output to be for each step. After doing this for each method, we then moved onto the 'steps' section. The more detail we could give in these steps, the easier it became to actually code that portion of the program.
# 2. What are the tradeoffs of using arrays and hashes for this challenge?
	# My pair and I chose to use hashes because, unlike arrays that use only index values to access their elements, hashes take a key (which we put as the item on the grocery list), and a value (the quantity of the item needed at the grocery store). These two pieces of data made our grocery list much more readable and more like an actual list, rather than a collection of items and integers in an array with no rhyme or reason.
# 3. What does a method return?
	# A method returns the last line of code read by the program, usually an implicit return of a particular variable or data structure.
# 4. What kind of things can you pass into methods as arguments?
	# You can pass in strings, hashes, arrays, integers, boolean values, optional parameters/default values (if not given by user), and other methods
# 5. How can you pass information between methods?
	# You can pass information between methods by storing the results of a certain method in a variable outside the method, and then reassigning the results of a different method to that same variable, or by passing in a method as another method's argument.
# 6. What concepts were solidified in this challenge, and what concepts are still confusing?
	# I feel much more comfortable with '.each do' blocks and with accessing items inside a hash. I still find refactoring a bit confusing -- I think I just need to get a bit more comfortable with Ruby so I know which shortcuts are available for me.

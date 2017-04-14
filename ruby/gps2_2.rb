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

#Method 2
#Method 3
#Method 4
#Method 5



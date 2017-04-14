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
Method 2: add item to list
	Input: list, item name, optional quantity
	Steps:
	Output: store item name with optional quantity in hash
Method 3: remove item from list
	Input: selected key from hash, e.g. hash["carrots"], to delete
	Steps:
	Output: modified hash without the selected key/value pair
Method 4: Update quantities for items in list
	Input: select key whose value we wish to change and provide updated quantity
	Steps:
	Output: modified hash with the updated quantity (value) of the chosen key
Method 5: Print list
	Input: hash
	Steps:
	Output: interpolated key and value in string
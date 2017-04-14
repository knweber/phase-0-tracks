#Release 0 -- Pseudocode

Method 1: create new list
	Input: string of items separated by spaces
	Output: hash
Method 2: add item to list
	Input: list, item name, optional quantity
	Output: store item name with optional quantity in hash
Method 3: remove item from list
	Input: selected key from hash, e.g. hash["carrots"], to delete
	Output: modified hash without the selected key/value pair
Method 4: Update quantities for items in list
	Input: select key whose value we wish to change and provide updated quantity
	Output: modified hash with the updated quantity (value) of the chosen key
Method 5: Print list
	Input: hash
	Output: interpolated key and value in string
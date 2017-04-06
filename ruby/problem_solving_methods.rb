# INPUT: put in array and an integer to search for
# Iterate through the array to try to find the integer
# If the integer is present, return its index
# If the integer is not present, return nil

def search_array(arr,n)
	index = 0
	while index < arr.length
		if arr[index] == n 
		  puts index
		end
		index +=1
	end
end

search_array([6,2,3,9,7,1],7)
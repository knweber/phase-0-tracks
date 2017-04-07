#RELEASE 0
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


#RELEASE 1
def fib(n)
  array = [0,1] # x(old b) + new b 
  a=0 
  b=1 
  (n-1).times do |n|
  p array
  x = b #old b
  b = a + b # new b == sum of two
  a = x # a == old b
  array.push(b)
  end
end

fib(100)

#RELEASE 2
#PSEUDOCODE
# 1. Input: array of integers
# 2. Create new array 
# 3. Move first integer from old array into new array
# 4. Compare first integer to following integer (still in old array). If first integer is larger, insert second integer before; if first integer is smaller, insert second integer after in new array.
# 5. If the two integers are equal, put the following integer after the first in the new array 
# 6. Continue for the remaining integers in the old array -- compare the next value in the old array to the first, second, third...n values in the new array. If the value is smaller, put it before the next largest value; if it is larger, put it after.
# 7. Return the final sorted new array! 


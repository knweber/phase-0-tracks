# INPUT: put in array and an integer to search for
# Iterate through the array to try to find the integer
# If the integer is present, return its index
# If the integer is not present, return nil


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

#INPUT: number of terms in fibonacci sequence that you want to see
#n = (n.index - 2) + (n.index - 1)
#next integer in sequence pushed into array
#OUTPUT: array of fibonacci numbers


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

# 5.times do |n|
#   result = fib(n)
#   puts result
# end
  
  
#   sequence = [0,1,1,2]
#   fibonacci = []
#   index = 0
#   while index < n
#   fibonacci.push(sequence[-1] + sequence[-2])
#   index += 1 
# end
# p fibonacci
# end

# def fib(n)
#   answerArr = [0,1]
#   index = 0
#   while index < n
# 	answerArr.push((n.index-2)+(n.index-1))
# 	end
# end


#fib(3) { answerArr.push((n.index-2)+(n.index-1)) }


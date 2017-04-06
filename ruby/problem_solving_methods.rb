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
	answerArr = []
	yield
end

answerArr.push((n.index-2)+(n.index-1))


def fib(n)
 a = 0 
 b = 1
 n.times do
   temp = a 
   a = b
   b = temp + b
  end
  return a 
n.times do |n|
  fibArray = []
  result = fib(n)
  fibArray.push(result)
end 
end

p fib(7)

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


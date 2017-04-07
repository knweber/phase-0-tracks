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
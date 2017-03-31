Find length of password
Loop through password, increasing the index of each letter by 1
For each letter, advance to the next one by using str.next, or something similar
Output: Print final encrypted password

def encrypt()
	puts "What is your password?"
	input = gets.chomp
	passwordlength = input.length
	for i in 0...passwordlength
	  if input[i] == 'z'
	    input[i] = 'a'
	   else
		input[i] = input[i].next
		end
	end
puts input
end

encrypt()

encrypt("abc")
encrypt ("zed")


def decrypt
end
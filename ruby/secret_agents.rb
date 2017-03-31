# Find length of password
# Loop through password, increasing the index of each letter by 1
# For each letter, advance to the next one by using str.next, or something similar
# Output: Print final encrypted password

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


# Input: encrypted password
# Make new variable to store a through z
# Take first letter of input and compare it to the entire a-z string
# Once we find that letter in the string, store the letter immediately before it
# Loop through the input
# Output: final decrypted password

def decrypt()
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	puts "What is the encrypted password?"
	input = gets.chomp
	passwordlength = input.length
	alphabetlength = alphabet.length
	for i in 0...passwordlength
	  if input[i] == 'a'
			    input[i] = 'z'
		else
		  for j in 0...alphabetlength
		  	if input[i] == alphabet[j]
				  input[i] = alphabet[j-1]
			  end
		end
		end
	end
puts input
end

decrypt()
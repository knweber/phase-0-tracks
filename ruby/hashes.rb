#RELEASE 0

#1.
#2.
#3.

#RELEASE 1

#nothing to turn in





#RELEASE 2

# PSEUDOCODE
# initialize empty object of 'client'
# ask user for the client's name
# ask user for client's age, convert to integer
# ask user how many children the client has, convert to integer
# ask user for the desired decor theme 
# ask user whether the client is high maintenance or not (ask user to respond with either 'y' or 'n', and use if/else statement to convert user input to true/false)
# print out client data
# ask user if he or she would like to change any of their prior answers
# 	if user says 'none', skip this step and print out client data
# 	if user types in the name of a key, ask for the user's new answer
# 	update hash to include new value for the specified key
# print final client data


client = {} 

puts "Thank you for using our service today. First of all, what is your client's name?"
client[:name] = gets.chomp 

puts "How old is your client?"
client[:age] = gets.chomp.to_i

puts "How many children does your client have?"
client[:number_of_children] = gets.chomp.to_i

puts "What is the decor theme?"
client[:decor_theme] = gets.chomp

puts "Is this client high maintenance? (y/n)"
input = gets.chomp.downcase
if input == ("n" || "no")
	client[:is_high_maintenance] = false
elsif input == ("y" || "yes")
	client[:is_high_maintenance] = true
end

p client

puts "Before submitting, do you need to change any of the prior data? If so, type the key (without the preceding colon). Otherwise, type 'none'."
fix_anything = gets.chomp.downcase
if fix_anything == "none"
  p client
elsif fix_anything == "name"
  puts "What is your new answer?"
	client[:name] = gets.chomp 
	p client
elsif fix_anything == "age"
  puts "What is your new answer?"
	client[:age] = gets.chomp.to_i
	p client
elsif fix_anything == "number_of_children"
  puts "What is your new answer?"
	client[:number_of_children] = gets.chomp.to_i 
	p client
elsif fix_anything == "decor_theme"
  puts "What is your new answer?"
	client[:decor_theme] = gets.chomp 
	p client
elsif fix_anything == "is_high_maintenance"
	puts "What is your new answer?"
	new_answer = gets.chomp.downcase
	  if new_answer == ("y" || "yes")
	    client[:is_high_maintenance] = true
    elsif new_answer == ("n" || "no")
	    client[:is_high_maintenance] = false
    end
	p client
end
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
if input == "y" || "yes"
	client[:is_high_maintenance] = true
elsif input == "n" || "no"
	client[:is_high_maintenance] = false
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
	new_answer = gets.chomp 
	p client
elsif fix_anything == "is_high_maintenance"
	puts "What is your new answer?"
	new_answer = gets.chomp 
	  if new_answer == "y" || "yes"
	    client[:is_high_maintenance] = true
    elsif new_answer == "n" || "no"
	    client[:is_high_maintenance] = false
    end
	p client
end
	
	
	
	if fix_anything == "name"
	    client[fix_anything.to_sym] == gets.chomp

end
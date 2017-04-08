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

puts "Before submitting, do you need to change any of the prior data? If so, type the key. Otherwise, type 'none'."
fix_anything = gets.chomp.downcase
if fix_anything == "none"
	break
else
	puts "What is your new answer?"
	modified_answer == gets.chomp
	client[fix_anything.to_sym] = modified_answer
end

p client
client = {
	name: 
	age:
	number_of_children:
	decor_theme:
	is_high_maintenance:
}

puts "Thank you for using our service today. First of all, what is your client's name?"
client[:name] = gets.chomp

puts "How old is your client?"
client[:age] = gets.chomp.to_i

puts "How many children does your client have?"
client[:number_of_children] = gets.chomp.to_i

puts "What is the decor theme?"
client[:decor_theme] = gets.chomp

puts "Is this client high maintenance? (y/n)"
input = gets.chomp
if input.downcase == "y"
	client[:is_high_maintenance] = true
else
	client[:is_high_maintenance] = false
end


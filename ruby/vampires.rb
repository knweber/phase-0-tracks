wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

puts "How many employees will be processed?"
n = gets.chomp

for i in 1..n 
	puts "What is your name?"
	name = gets.chomp

	puts "How old are you? What year were you born?"


	puts "Our company cafeteria serves garlic bred. Should we order some for you? (y/n)"
	eat_bread = gets.chomp

	if eat_bread == "y"
		eat_bread == true
	else
		eat_bread == false
	end


	puts "Would you like to enroll in the company's health insurance? (y/n)"
	insurance = gets.chomp

	if insurance == "y"
		insurance == true
	else
		insurance == false
	end

	def vampire_checker
		if age && (eat_bread || insurance)
			puts "Probably not a vampire"
		elsif !age && (!eat_bread || !insurance)
			puts "Probably a vampire"
		elsif !age && (!eat_bread && !insurance)
			puts "Almost certainly a vampire"
		elsif name == "Drake Cula" || "Tu Fang"
			puts "Definitely a vampire"
		else
			puts "Results inconclusive"
		end
	end
	
end

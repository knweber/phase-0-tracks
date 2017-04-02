wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

def vampire_checker

	puts "How many employees will be processed?"
	n = gets.chomp.to_i

	for i in 1..n 
		puts "What is your name?"
		name = gets.chomp

		puts "What year were you born?"
		year = gets.chomp.to_i


	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
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

	
	puts "Please name any allergies you may have"
	input = gets.chomp 
	until input == "done"

		if (year >= 1917) && (eat_bread || insurance)
			puts "Probably not a vampire"
		elsif (year < 1917) && (!eat_bread || !insurance)
			puts "Probably a vampire"
		elsif (year< 1917) && (!eat_bread && !insurance)
			puts "Almost certainly a vampire"
		elsif name == "Drake Cula" || "Tu Fang"
			puts "Definitely a vampire"
		elsif input == "sunshine"
			puts "Probably a vampire"
		else
			puts "Results inconclusive"
		end
	end

end

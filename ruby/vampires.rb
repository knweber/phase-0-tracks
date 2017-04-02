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
			elsif eat_bread == "n"
				eat_bread == false
			end


		puts "Would you like to enroll in the company's health insurance? (y/n)"
		insurance = gets.chomp

			if insurance == "y"
				insurance == true
			elsif insurance == "n"
				insurance == false
			end

		begin
			puts("Please name any allergies you may have. Type 'done' once you are finished.")
			input = gets.chomp 
			if input == "sunshine"
				puts "Probably a vampire"
			else 
				if (year > 1917) && (eat_bread || insurance)
					puts "Probably not a vampire"
				elsif (year < 1917) && (!eat_bread || !insurance)
					puts "Probably a vampire"
				elsif (year < 1917) && (eat_bread == false && insurance == false)
					puts "Almost certainly a vampire"
				elsif name == ("Drake Cula" || "Tu Fang")
					puts "Definitely a vampire"

				else
					puts "Results inconclusive"
				end
			end
		end until input == ("done" || "sunshine")

		
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end


vampire_checker
	
@mechamanny #code review for 4.4 solo challenge. Thank you!!

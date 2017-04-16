# RELEASE 1 -- PSEUDOCODE

# INPUT: correct word (str) entered by one user, and a guessed letter
# (str) entered by another user (gets.chomp). 
# STEPS:      
# 	1. The user sees a series of dashes showing the length of the word (e.g. p "-------"")      
# 	2. The number of guesses allowed is equal to the length of the word plus one (word.length+1) -->
# 	until @guess_count = word.length + 1 ...		
# 	3. If user attempts to guess the same letter twice, that does NOT count as another guess -->
#   @guess_count += 0    
# 	4. If the user guesses a correct letter, the answer string replaces the dash with the corresponding letter (at
# 	the correct index); if not, the same series of dashes is returned
# 	5. Keep asking for guesses until @guess_count = word.length+1 (counting via @guess_count += 1)     
# 	6. As the user guesses correctly, the series of dashes is replaced with the
# 	correct letters (str[other_str] = new_str)
# OUTPUT: return 'Congratulations! You guessed the word!' if they win within the number of allotted guesses (<word.length+1), and 'Sorry,
# you lost!' if they do not guess correctly within the number of guesses

# RELEASE 2 -- BUILD GAME
class HangMan
	attr_accessor :guess_count 
	attr_reader :is_over
	attr_reader :correct_guesses
	attr_reader :incorrect_guesses
	attr_reader :answer 
	attr_reader :attempt 

	def initialize
		@answer = answer
		@attempt = attempt
		@guess_count = 0
		@correct_guesses = []
		@incorrect_guesses = []
		@is_over = false
	end

	def hyphenate(answer)
		hyphenated_answer = ""
		index = 0
		while index < answer.length
			hyphenated_answer += "-"
			index +=1
		end
		hyphenated_answer
	end

		def check_letter(answer,attempt)
		@correct_guesses = []
		while @guess_count < answer.length
		if answer.include?(attempt)
			@correct_guesses << attempt
			break
		else
			puts "Sorry! That letter is not in the word. Guess again!"
			@guess_count += 1
		end
	end
	@correct_guesses
	end
	
	#end

		# hyphenated_str = hyphenated_answer
		# 	until @is_over == true
		# 		if answer.include? (attempt)
		# 			attempt_index = answer.index(attempt)
		# 			hyphenated_str[attempt_index] = attempt
		# 			hyphenated_answer = hyphenated_str
		# 			@guess_count += 1
		# 		elsif hyphenated_str.include? (attempt)
		# 			puts "Please guess a different letter"
		# 			@guess_count += 0	
		# 		elsif
		# 			puts "Sorry! That letter is not in the word. Guess again!"
		# 			@guess_count += 1
		# 		end
		# 	end
		#	@hyphenated_answer

@correct_guesses	
@hyphenated_answer
@hyphenated_str = "" #string built by adding in correct letters

	def add_letter(correct_guesses,answer)
		split_answer = answer.split('')
		#hyphenated_str = split_answer.map! do 
			index = 0
			while index < answer.length
			if correct_guesses.include?(answer[index])
				hyphenated_str[index] = answer[index]
			else
				hyphenated_str[index] = '-'
			end
		end
		hyphenated_str.join('')
	end

	def game_over
		if @guess_count < @answer.length+1
			@is_over = true
			puts "You ran out of guesses!"
		elsif @hyphenated_str == @answer
			@is_over = true
			puts "You won!"
		else
			@is_over = false
			puts "You lost!"
		end
	end

	end

# while !is_over
# 	if!
#user interface
# puts "Are you ready to play?"
# game = HangMan.new

# puts "Player One, which word do you choose?"
# answer = gets.chomp

# puts "Player Two, here is your first hint:"
# letters_in_answer = answer.split('')
# letters_in_answer.each do |n|
# 	p "-"
# end

# puts "Player Two, what is your first guess?"
# guess = gets.chomp

# puts "Sorry, you lost!"

# puts "Congratulations! You won the game in #{game.guess_count} guesses!"

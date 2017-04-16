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
	attr_accessor :correct_guesses
	attr_reader :hyphenated_answer
	attr_reader :answer 
	attr_reader :attempt 
	attr_reader :location

	def initialize(answer)
		@answer = answer
		@attempt = ""
		@guess_count = 0
		@correct_guesses = []
		@incorrect_guesses = []
		@is_over = false
		@location = location
		hyphenate
	end

	def hyphenate
		@hyphenated_answer = ""
		index = 0
		while index < answer.length
			@hyphenated_answer += "-"
			index +=1
		end
		@hyphenated_answer
	end

	def check_letter(attempt)
		if @guess_count < answer.length
			if @correct_guesses.include?(attempt) || @incorrect_guesses.include?(attempt)
				p "You already guessed that letter!"
			elsif answer.include?(attempt)
				@correct_guesses.push(attempt)
				@guess_count += 1
				add_letter(attempt)
			elsif !answer.include?(attempt)
				@guess_count += 1
				@incorrect_guesses.push(attempt)
				p "Sorry! That letter is not in the word. Guess again!"
			end
		else
		  return "Sorry, you're out of guesses!"
		end
	end
	
@hyphenated_str = "" #string built by adding in correct letters
@correct_guesses

	def add_letter(correct_guesses)
		(answer.split('').each_index.map do |n|
			if correct_guesses.include?(answer[n])
			  @hyphenated_answer[n] = answer[n]
			else
				'-'
			end
		end).join('')
	end

	def game_over
	  puts @guess_count
		if @guess_count <= answer.length && @hyphenated_answer == @answer
			puts "You won!"
			true
		elsif @guess_count == answer.length && @hyphenated_answer != @answer
		  puts "You're out of guesses!"
		  true
		else
		  false
		end
	end
end


puts "Player One, which word do you choose?"
chosen_word = gets.chomp
game1 = HangMan.new(chosen_word)
puts "Player Two, here is your first hint:"
p game1.hyphenated_answer

until game1.game_over == true
  puts "Player Two, what is your guess?"
  guessed_letter = gets.chomp
  game1.check_letter(guessed_letter)
  p game1.hyphenated_answer
end


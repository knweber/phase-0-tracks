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
	attr_reader :guess_count :is_over

	def initialize
		@guess_count = 0
		@is_over = false
	end

	#user interface
puts "Are you ready to play?"
game = HangMan.new

puts "Player One, which word do you choose?"
answer = gets.chomp

puts "Player Two, here is your first hint:"
letters_in_answer = answer.split('')
letters_in_answer.each do |n|
	p "-"
end

puts "Sorry, you lost!"

puts "Congratulations! You won the game in #{game.guess_count} guesses!"
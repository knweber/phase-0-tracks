# RELEASE 1 -- PSEUDOCODE

# INPUT: correct word (str) entered by one user, and a guessed letter (str) entered by another user
# STEPS:
# 	1. The user sees a series of dashes showing the length of the word
# 	2. The number of guesses allowed is equal to the length of the word plus one (word.length+1)
# 	3. If user attempts to guess the same letter twice, that does NOT count as another guess
# 	4. If the user guesses a correct letter, the answer string replaces the dash with the corresponding letter (at the correct index); if not, the same series of dashes is returned
# 	5. Keep asking for guesses until guesses = word.length+1
# 	6. As the user guesses correctly, the series of dashes is replaced with the correct letters
# OUTPUT: return 'Congratulations! You guessed the word!' if they win within the number of allotted guesses, and 'Sorry, you lost!' if they do not guess correctly within the number of guesses
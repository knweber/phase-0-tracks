class Santa

	def speak
		puts "Ho, ho, ho! Haaaaappy holidays!"
	end

	def eat_milk_and_cookies(cookietype)
		puts "That was a good #{cookietype}!"
	end

	def initialize(gender,ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0
	end
end

Bob = Santa.new
Bob.speak
Bob.eat_milk_and_cookies("gingersnap")
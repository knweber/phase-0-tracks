class Santa

	def speak
		puts "Ho, ho, ho! Haaaaappy holidays!"
	end

	def eat_milk_and_cookies(cookietype)
		puts "That was a good #{cookietype}!"
	end

	def initialize(gender,ethnicity,reindeer_ranking)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = reindeer_ranking
		age = 0
	end
end

Bob = Santa.new
Bob.speak
Bob.eat_milk_and_cookies("gingersnap")
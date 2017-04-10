class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

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
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	#setter methods
	
	def celebrate_birthday=(new_age)
		@age = new_age
		puts "Happy birthday! You are now #{@age} year(s) old!"
	end

	def get_mad_at=(bad_reindeer)
			@reindeer_ranking.delete(bad_reindeer)
			@reindeer_ranking.push(bad_reindeer)
			p @reindeer_ranking
	end

end

bob = Santa.new("transwoman", "Canadian")
bob.speak
bob.eat_milk_and_cookies("gingersnap")
puts "Bob is currently #{bob.age} years old."
bob.celebrate_birthday = 1
bob.ethnicity
bob.age
bob.get_mad_at = "Dancer"


# santas = []
# example_genders = ["transwoman", "agender", "male", "genderqueer", "female", "trigender"]
# example_ethnicities = ["Maori", "Native American", "Russian", "Australian", "Canadian"]
# example_genders.length.times do |n|
# 	santas << Santa.new(example_genders[n], example_ethnicities[n])
# end 

p santas


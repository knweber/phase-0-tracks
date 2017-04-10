# SPECIES --------
# Canis lupus familiaris

# CHARACTERISTICS --------
# Legs: 4
# Adorable: yes
# Name: varies
# Color: varies
# Breed: varies
# Signature sound: Woof!
# Better than cat: yes

# BEHAVIOR ----------
# Run
# Bark
# Lick your face
# Sleep

class Puppy

	def speak(n)
		n.times do 
		puts "Woof!"
		end
	end
	
	def roll_over
	  puts "*rolls over*"
	end
	
	def dog_years(n)
	  n*7
	end
	 
	def go_away_cat
	  puts "Woof! Go away cat!"
	 end
	
end

Sammy = Puppy.new

Sammy.speak(10)

Sammy.roll_over

Sammy.dog_years(9)

Sammy.go_away_cat

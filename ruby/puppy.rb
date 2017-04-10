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

end

Sammy = Puppy.new

Sammy.speak(10)
Sammy.roll_over

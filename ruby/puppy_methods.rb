class Puppy

	def fetch(toy)
      puts "I brought back the #{toy}!"
      toy
  	end
	
	def speak(n)
		n.times do 
			puts "Woof!"
		end
	end
	
	def roll_over
	  puts "*rolls over*"
	end
	
	def dog_years(n)
	  puts n*7
	end
	 
	def go_away_cat
	  puts "Woof! Go away cat!"
	 end
	
	def initialize
	  puts "Initializing new puppy instance..."
	end

end

Sammy = Puppy.new

Sammy.fetch("ball")

Sammy.speak(10)

Sammy.roll_over

Sammy.dog_years(9)

Sammy.go_away_cat

class Runner
  
  def initialize
    puts "Initializing new runner instance..."
  end 
  
  def old_shoes
    puts "Time to buy new shoes!"
  end
  
  def five_k_time(mile_time_in_minutes)
    puts mile_time_in_minutes*3.1
  end
  
end

Shalane = Runner.new
Shalane.old_shoes
Shalane.five_k_time(5.03)

runners = []
50.times do
  runners.push(Runner.new)
end

p runners

runners.each do |n|
  n.old_shoes
  n.five_k_time(6)
end
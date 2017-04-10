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

end


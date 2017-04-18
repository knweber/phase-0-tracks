# Virus Predictor

# I worked on this challenge [by myself, with: Aaron Stack-Barnes].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# require relative builds on the default method require and allows the code to like to a file that is not in the root ruby folder instead it is some where relative to where the code is written
#
require_relative 'state_data'

class VirusPredictor
# initializes a new instance of a virus epidemic from a given state (population density and population)
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calls the methods that predicts the speed of spread and number of deaths 
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  private

# predicts how many deaths based on the states population density

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# takes the population density and predicts how many months it will take to spread across the state

  def speed_of_spread
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

state_array = []
 STATE_DATA.each do |state, population_information|
  outbreak = VirusPredictor.new(state, population_information[:population_density], population_information[:population])
  state_array << outbreak
 end

 state_array.each do |state|
  state.virus_effects
end

#=======================================================================
# Reflection Section

#1. What are the differences between the two different hash syntaxes shown in the state_data file?

    #One syntax uses the hash rocket (e.g. :key => "value") and the other uses a simple colon (e.g. key: "value"). This second is more useful for hashes where the keys and values are simpler, for example, name: "Kris". The syntax with the hash rocket is better if your data is more complex, like if you were using nested data structures.

#2. What does require_relative do? How is it different from require?

    #Require allows the programmer to access libraries and other file extensions in the Ruby gem. Require_relative, on the other hand, allows you access to a file (e.g. a testing file) in the directory in which you are currently working.

#3. What are some ways to iterate through a hash?
    
    #You can iterate through a hash by using .each do |key, value| blocks, .each_key do |key| blocks, and .each_value do |value| blocks.

#4. When refactoring virus_effects, what stood out to you about the variables, if anything?

    #I realized that you don't need to pass in the variables to every method as arguments, since they are already declared during initialization.

#5. What concept did you most solidify in this challenge?

    #Looping through hashes and refactoring


# Virus Predictor

# I worked on this challenge with: Joanna Joseph.
# We spent 2 hours on this challenge.

# require_relative loads the file in the same directory of the file that called it
# require relative method signature returns true if the file is found and returns false if not and will generate a load error.
# it differs from require because it saves you the effort to provide the path, it's like a syntactic sugar for require
# also it will not look at your load path folders if it doesn't find the file in the current directory

require_relative 'state_data'
class VirusPredictor

# creating the VirusPredictor object and initializes the instance with it's variables and initial values.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calls the methods predicted_deaths and speed_of_spread
  def virus_effects
=begin
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
=end    
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private
# calculating the number of deaths depending on population density
# to predict the severity of the outbreak
# it produces a printout of the findings but returns nothing
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = case @population
    when 200..Float::INFINITY then (@population * 0.4).floor 
    when 150..199 then (@population * 0.3).floor
    when 100..149 then (@population * 0.2).floor
    when 50..99 then (@population * 0.1).floor
    else (@population * 0.05).floor
    end
=begin
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
=end       
  end

# calculates how fast the virus spreads depending on density
# it will print out the findings and return nil
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case @population_density
    when 200..Float::INFINITY then speed += 0.5
    when 150..199 then speed += 1
    when 100..149 then speed += 1.5
    when 50..99 then speed += 2
    else speed += 2.5
    end
=begin    
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
=end      
    speed
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end
STATE_DATA.each do |state, report|
  VirusPredictor.new(state, report[:population_density], report[:population]).virus_effects
end

#=======================================================================
=begin
# Reflection Section
1. What are the differences between the two different hash syntaxes shown in the state_data file?
The difference between the two different hash syntax is that the string key is using a hash rocket while the symbol keys are using a shortcut colon.

2. What does require_relative do? How is it different from require?
Require_relative loads the file in the same directory of the file that called it.
Require relative method signature returns true if the file is found and returns false if not and will generate a load error. 
It differs from require because it saves you the effort to provide the path. 
Also it will not look at your load path folders if it doesn't find the file in the current directory.

3. What are some ways to iterate through a hash?
You can use the each, select, and sort methods to name a few to iterate through a hash

4. When refactoring virus_effects, what stood out to you about the variables, if anything?
The variables are instance variables so you don't need the parameters because their scopes are within the class.

5 .What concept did you most solidify in this challenge?
I think I got a little better at refactoring code and making code more dry.
=end
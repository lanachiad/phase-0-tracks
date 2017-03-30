# Virus Predictor

# I worked on this challenge with: Kiv Lo.
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# 'require_relative' links to your own Ruby file(s) in the same directory to refer to specific classes and methods within that file.
# 'require' is more specific in providing the absolute pathway to a Ruby file that may not be yours or you'll pulling from another server.

require_relative 'state_data'

class VirusPredictor

# Initialize method defines each instance of the Class, defines the instance variables, assigns these variables to the instance.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calls the other methods to execute.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# Private method hides methods that are being executed in other methods (e.g. virus_effects) that you don't want the public to run individually (e.g. predicted_deaths, speed_of_spread).
  private

# Predicts numbers of death based on population density
  def predicted_deaths
    # predicted deaths is solely based on population density

    estimated_deaths = case @population_density
      when 0...50 then 0.05
      when 50...100 then 0.1
      when 100...150 then 0.2
      when 150...200 then 0.3
      else 0.4
    end

    number_of_deaths = (@population * estimated_deaths).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    # print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Predicting the speed of spread based on population density, the smaller the density, the faster the disease spreads.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    speed = case @population_density
    when 0...50 then 2.5
      when 50...100 then 2
      when 100...150 then 1.5
      when 150...200 then 1
      else 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

    # speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    # puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, pop_data|
  each_state = VirusPredictor.new(state, pop_data[:population_density], pop_data[:population])
  each_state.virus_effects
end



#=======================================================================
# Reflection Section

# 1. What are the differences between the two different hash syntaxes shown in the state_data file?

# It's essentially a hash within a hash. The differences is the outer hash is defined using the => arrow and the key value is defined a string. The inner hash is defined between curly brackets as a symbol, which is typically used to declare key-value pairs that aren't meant to manipulated.

# 2. What does relative_require do? How is it different from 'require'?

# 'require_relative' links to your own Ruby file(s) in the same directory to refer to specific classes and methods within that file. You just have to include the file name. 'require' is more specific in providing the absolute pathway to a Ruby file that may not be yours or you'll pulling from another server.

# 3. What are some ways to iterate through a hash?
# Using .each to iterate through the key and value (and even the value's key/value), using case statements

# 4. When refactoring virus_effects, what stood out to you about the variables, if anything?

# The variables referenced were the instance variables. Because of this, the parameters were redundant in their declaration, so it was removed.

# 5. What concept did you most solidify in this challenge?

# I definitely feel like I understand 'require' and 'relative_require' a lot more. I came across this difference during a previous challenge, so it's nice to actually know the difference between the two.
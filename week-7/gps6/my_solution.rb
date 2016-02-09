# Virus Predictor

# I worked on this challenge [by myself, with: Kevin Serrano].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#  require_Relative asserts that specific variables be present in the global environment before the program begins to execute, else it raises an exception. It works by checking if the variable is declared in the program. The difference between require_relative and require is that require_relative is used primarily for variables while require is mainly used for modules in the Ruby library.

# require_relative 'state_data'

class VirusPredictor
#   turning variables into instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#   calling methods and passing the instance variables as arguments
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

#   makes methods below private; limits method scope to within the class
  private

#   calculates predicted death, prints string
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
      when @population_density >= 200 then rate = 0.4  
      when @population_density >= 150 then rate = 0.3 
      when @population_density >= 100 then rate = 0.2 
      when @population_density >= 50 then rate = 0.1 
      else rate = 0.05 
    end
    number_of_deaths = (@population * rate).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  
# calculates the speed of the spread, prints string
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    case @population_density
      when @population_density >= 200 then speed = 0.5
      when @population_density >= 150 then speed = 1
      when @population_density >= 100 then speed = 1.5
      when @population_density >= 50 then speed = 2
      else speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

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

STATE_DATA.each do |state,data|         
  VirusPredictor.new(state,data[:population_density],data[:population]).virus_effects
end


#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?
  The outer hash uses strings as keys, while the inner hash has symbols as keys
What does require_relative do? How is it different from require?
  relative_require loads a file using the relative path address of the file, while require loads a path based on the path relative to the $LOAD_PATH variable. Require is usually used for loading modules.
What are some ways to iterate through a hash?
  Using the .each_key, .each, .values_at, .map methods
When refactoring virus_effects, what stood out to you about the variables, if anything?
  We were passing local variables but the methods used instance variables
What concept did you most solidify in this challenge?
  Iteration through hashes. Also the use of constants, and the inmutability of symbols

=end
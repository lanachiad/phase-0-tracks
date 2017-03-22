class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
  	@age = 0
  	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age = age + 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  def gender
  	@gender
  end

end

santa = Santa.new("female", "Asian")
puts "Santa is a #{santa.gender} and is #{santa.ethnicity}."
p santa.gender
santa.gender = "femme queer"
p santa.gender
p santa.celebrate_birthday
p santa.get_mad_at("Dasher")

# santas = []
# sample_gender = ["female", "male", "bigender", "gender fluid", "agender", "N/A"]
# sample_ethnicity = ["white", "black", "Middle Eastern", "Asian", "Latino", "prefer not to say"]

# sample_gender.length.times do |i|
#   santas << Santa.new(sample_gender[i], sample_ethnicity[i])
#   puts "This Santa is #{sample_gender[i]} #{sample_ethnicity[i]}"
# end

# p santas

# dirty_santa = Santa.new
# dirty_santa.speak
# dirty_santa.eat_milk_and_cookies("snickerdoodle")

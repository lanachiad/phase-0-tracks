class Santa

	attr_reader :age, :ethnicity

	attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
  	@age = rand(0..140)
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

end


# Driver code for Release 0

dirty_santa = Santa.new
dirty_santa.speak
dirty_santa.eat_milk_and_cookies("snickerdoodle")


# Release 1

sample_gender = ["female", "male", "bigender", "gender fluid", "agender", "androsexual", "femme", "genderqueer", "intersex", "N/A"]
sample_ethnicity = ["white", "black", "Middle Eastern", "Asian", "Latino", "Native American", "Pacific Islander", "North African", "prefer not to say"]

sample_gender.length.times do |i|
  puts "This Santa is #{sample_gender[i]} #{sample_ethnicity[i]}"
end


# Driver code for Release 3

santa = Santa.new("female", "Asian")
puts "Santa is a #{santa.gender} and is #{santa.ethnicity}."
p santa.gender
santa.gender = "femme queer"
p santa.gender
p santa.celebrate_birthday
p santa.get_mad_at("Dasher")


# Release 4

count = 0
while count < 100
	diverse_santa = Santa.new("female", "Middle Eastern")
	puts "This Santa is #{sample_gender.sample}, #{sample_ethnicity.sample}, and #{diverse_santa.age}"
	count += 1
end
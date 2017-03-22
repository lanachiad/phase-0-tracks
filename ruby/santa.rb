class Santa

	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end

santas = []
sample_gender = ["female", "male", "bigender", "gender fluid", "agender", "N/A"]
sample_ethnicity = ["white", "black", "Middle Eastern", "Asian", "Latino", "prefer not to say"] 

sample_gender.length.times do |i|
	santas << Santa.new(sample_gender[i], sample_ethnicity[i])
	puts "This Santa is #{sample_gender[i]} #{sample_ethnicity[i]}"
end

p santas

# dirty_santa = Santa.new
# dirty_santa.speak
# dirty_santa.eat_milk_and_cookies("snickerdoodle")


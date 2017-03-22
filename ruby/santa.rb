class Santa

	def initialize
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end

dirty_santa = Santa.new
dirty_santa.speak
dirty_santa.eat_milk_and_cookies("snickerdoodle")
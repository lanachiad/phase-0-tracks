# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end
# end

# p Shout.yell_angrily("What on earth happened here")
# p Shout.yelling_happily("I'm so happy for you")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!!!" + " :)"
	end
end

class Med_School_Applicant
	include Shout
end

class Driver
	include Shout
end

student = Med_School_Applicant.new
p student.yelling_happily("I got into my dream school")

road_rager = Driver.new
p road_rager.yell_angrily("Drive with the flow of traffic")
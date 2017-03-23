module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :)"
	end
end

p Shout.yell_angrily("What on earth happened here")
p Shout.yelling_happily("I'm so happy for you")
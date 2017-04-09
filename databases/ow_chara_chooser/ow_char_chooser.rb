class Character_Chooser

	attr_accessor :answer

	def initialize
		@answer = answer
		introduction
	end

	def introduction
		puts "Welcome to the Overwatch character chooser, the program that helps you find a new character to play in Overwatch!"
		puts "Do you want to choose based on role or gender? For more options, type 'other'."
		answer = gets.chomp.downcase
	end

	def role_chooser
	end

	def gender_chooser
	end

end
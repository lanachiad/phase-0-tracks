require 'sqlite3'

db = SQLite3::Database.new("ow_char.db")
db.results_as_hash = true

class Character_Chooser

	attr_accessor :answer
	attr_reader :role

	def initialize
		@answer = answer
		introduction
	end

	def introduction
		puts "Welcome to the Overwatch character chooser, the program that helps you find a new character to play in Overwatch!"
		puts "Do you want to choose based on role or gender? For more options, type 'other'."
		answer = gets.chomp.downcase

		if answer = "role"
			role_chooser
		elsif answer = "gender"
			gender_chooser
		elsif answer = "other"
			other_option
		end	
	end

	# Role Chooser

	def role_chooser
		puts "Let's choose your new character based on the role they play in the game. Your options are Offense, Defense, Tank, and Support."
		puts "Which role do you want to play?"
		role = gets.chomp.downcase
	end

	# Gender Chooser

	def gender_chooser
	end

	# Other Options

	def other_option
	end

end
require 'sqlite3'

class Character_Chooser

	attr_accessor :answer, :db
	attr_reader :role

	def initialize
		@db = SQLite3::Database.new("ow_char.db")
		@answer = answer
		@role = role
		introduction
	end

	def introduction
		puts "Welcome to the Overwatch character chooser, the program that helps you find a new character to play in Overwatch!"
		puts "Do you want to choose based on role or gender? For more options, type 'other'."
		answer = gets.chomp.downcase

		if answer == "role"
			role_chooser
		elsif answer == "gender"
			gender_chooser
		elsif answer == "other"
			other_option
		end	
	end

	# Role Chooser

	def role_chooser
		puts "Let's choose your new character based on the role they play in the game. Your options are Offense, Defense, Tank, and Support."
		puts "Which role do you want to play?"
		role = gets.chomp.downcase

		if role == "offense"
			print_offense(@db)
		elsif role == "defense"
			print_defense(@db)
		elsif role == "tank"
			print_tank
		elsif role == "support"
			print_support
		end
	end

	def print_offense(db)
		all_offense = db.execute("SELECT characters.name, gender.name, roles.name, characters.tier, characters.description FROM characters JOIN gender ON characters.gender_id = gender.id JOIN roles ON characters.role_id = roles.id WHERE role_id = 1;")
		all_offense.each do |name, gender, role, tier, description|
			puts "#{name} is a #{gender} #{role} in the #{tier}th tier. Character description is, '#{description}'"
		end
	end

	def print_defense(db)
		all_defense = db.execute("SELECT characters.name, gender.name, roles.name, characters.tier, characters.description FROM characters JOIN gender ON characters.gender_id = gender.id JOIN roles ON characters.role_id = roles.id WHERE role_id = 2;")
		all_defense.each do |name, gender, role, tier, description|
			puts "#{name} is a #{gender} #{role} in the #{tier}th tier. Character description is, '#{description}'"
		end
	end

	def print_tank
	end

	def print_support
	end

	# Gender Chooser

	def gender_chooser
	end

	# Other Options

	def other_option
	end
end

new_character = Character_Chooser.new 
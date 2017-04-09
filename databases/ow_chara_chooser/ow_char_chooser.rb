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
			print_tank(@db)
		elsif role == "support"
			print_support(@db)
		end
	end

	def print_offense(db)
		all_offense = db.execute("SELECT characters.name, gender.name, roles.name, characters.tier, characters.description FROM characters JOIN gender ON characters.gender_id = gender.id JOIN roles ON characters.role_id = roles.id WHERE role_id = 1;")
		all_offense.each do |name, gender, role, tier, description|
			puts "#{name} is a #{gender} #{role} in the #{tier} tier. #{name}'s description is, '#{description}'"
		end
	end

	def print_defense(db)
		all_defense = db.execute("SELECT characters.name, gender.name, roles.name, characters.tier, characters.description FROM characters JOIN gender ON characters.gender_id = gender.id JOIN roles ON characters.role_id = roles.id WHERE role_id = 2;")
		all_defense.each do |name, gender, role, tier, description|
			puts "#{name} is a #{gender} #{role} in the #{tier} tier. #{name}'s description is, '#{description}'"
		end
	end

	def print_tank(db)
		all_tank = db.execute("SELECT characters.name, gender.name, roles.name, characters.tier, characters.description FROM characters JOIN gender ON characters.gender_id = gender.id JOIN roles ON characters.role_id = roles.id WHERE role_id = 3;")
		all_tank.each do |name, gender, role, tier, description|
			puts "#{name} is a #{gender} #{role} in the #{tier} tier. #{name}'s description is, '#{description}'"
		end
	end

	def print_support(db)
		all_support = db.execute("SELECT characters.name, gender.name, roles.name, characters.tier, characters.description FROM characters JOIN gender ON characters.gender_id = gender.id JOIN roles ON characters.role_id = roles.id WHERE role_id = 4;")
		all_support.each do |name, gender, role, tier, description|
			puts "#{name} is a #{gender} #{role} in the #{tier} tier. #{name}'s description is, '#{description}'"
		end
	end

	# Gender Chooser

	def gender_chooser
		puts "Let's choose your character based on their gender. After all, we all want to be the character we play! Your options are Female, Male, Robot-Female, and Robot-Male."
		puts "Which gender do you want to play as?"
		gender = gets.chomp.downcase

		if gender == "female"
			print_female(@db)
		elsif gender == "male"
			print_male(@db)
		elsif gender == "robot-female"
			print_robofemale(@db)
		elsif gender == "robot-male"
			print_robomale(@db)
		end	
	end

	def print_female(db)
		all_female = db.execute("SELECT characters.name, gender.name, roles.name, characters.tier, characters.description FROM characters JOIN gender ON characters.gender_id = gender.id JOIN roles ON characters.role_id = roles.id WHERE gender_id = 1;")
		all_female.each do |name, gender, role, tier, description|
			puts "#{name} is a #{gender} #{role} in the #{tier} tier. #{name}'s description is, '#{description}'"
		end
	end

	def print_male(db)
		all_male = db.execute("SELECT characters.name, gender.name, roles.name, characters.tier, characters.description FROM characters JOIN gender ON characters.gender_id = gender.id JOIN roles ON characters.role_id = roles.id WHERE gender_id = 2;")
		all_male.each do |name, gender, role, tier, description|
			puts "#{name} is a #{gender} #{role} in the #{tier} tier. #{name}'s description is, '#{description}'"
		end
	end

	def print_robofemale(db)
		all_robofemale = db.execute("SELECT characters.name, gender.name, roles.name, characters.tier, characters.description FROM characters JOIN gender ON characters.gender_id = gender.id JOIN roles ON characters.role_id = roles.id WHERE gender_id = 3;")
		all_robofemale.each do |name, gender, role, tier, description|
			puts "#{name} is a #{gender} #{role} in the #{tier} tier. #{name}'s description is, '#{description}'"
		end
	end

	def print_robomale(db)
		all_robomale = db.execute("SELECT characters.name, gender.name, roles.name, characters.tier, characters.description FROM characters JOIN gender ON characters.gender_id = gender.id JOIN roles ON characters.role_id = roles.id WHERE gender_id = 4;")
		all_robomale.each do |name, gender, role, tier, description|
			puts "#{name} is a #{gender} #{role} in the #{tier} tier. #{name}'s description is, '#{description}'"
		end
	end

	# Other Options

	def other_option
		puts "Maybe you want to play the very best character. Maybe you just want to have fun. Either way, you've got options."
		puts "If you want to play as top-tier characters, type 'top'; if you want to play as fun characters, type 'fun'. Or if you still don't know what character you want to play, type 'random'."
		answer = gets.chomp.downcase

		if answer == "top"
			top_characters(@db)
		elsif answer == "fun"
			fun_characters(@db)
		elsif answer == "random"
			random_character(@db)
		end
	end
end

new_character = Character_Chooser.new 
# Processing Multiple Employees
puts "How many employees are being processed?"
number_employees = gets.chomp
number_employees = number_employees.to_i
current_employee = 0

while current_employee < number_employees

	# Variable declarations and converting to integers and booleans

	puts "What is your name?"
	employee_name = gets.chomp 

	if employee_name == "Tu Fang"
		employee_name = true
	elsif employee_name == "Drake Cula"
		employee_name = true
	else
		employee_name = false
	end

	puts "How old are you?"
	age = gets.chomp
	age = age.to_i


	puts "What year were you born?"
	year = gets.chomp
	year = year.to_i


	puts "Want us to order you some garlic bread? (y/n)"
	garlic_bread = gets.chomp

	if garlic_bread == "Y" || garlic_bread == "y"
		garlic_bread = true
	elsif garlic_bread == "N" || garlic_bread == "n"
		garlic_bread = false
	end
			

	puts "Do you want to enroll in the company's health insurance? (y/n)"
	health_insurance = gets.chomp

	if health_insurance == "Y" || health_insurance == "y"
		health_insurance = true
	elsif health_insurance == "N" || health_insurance == "n"
		health_insurance = false
	end

	# Check for allergies

	puts "Do you have any allergies? Submit answer after each one. Type 'done' when finished"
	allergies = gets.chomp
	if allergies == "sunshine"
		puts "Probably a vampire"
	else
		until allergies == "done"
			puts "Do you have any allergies? Submit answer after each one. Type 'done' when finished"
			allergies = gets.chomp
		end
	end


	# Validating age and year provided

	given_year = Time.new.year
	given_year = given_year.to_i
	check_year = given_year - year
	if check_year == age
		correct_age = true
	else
		correct_age = false
	end


	# Comparing answers to see if werewolf or vampire

	if employee_name && correct_age && (garlic_bread || health_insurance) == true
		puts "Definitely a vampire"
	elsif correct_age == false && (garlic_bread || health_insurance) == true 
		puts "Probably a vampire"
	elsif correct_age == false && (garlic_bread && health_insurance) == false
		puts "Almost certainly a vampire"
	elsif employee_name == false && (correct_age && (garlic_bread || health_insurance)) == true
		puts "Probably not a vampire"
	else
		puts "Results inconclusive"
	end

	current_employee += 1
end

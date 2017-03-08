# Variable declarations and converting to integers and booleans

puts "What is your name?"
employee_name = gets.chomp 


puts "How old are you?"
age = gets.chomp


puts "What year were you born?"
year = gets.chomp


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


# Validating age and year provided

given_year = Time.new.year
check_year = given_year.to_i - year.to_i
if check_year == age.to_i
	correct_age = true
else
	correct_age = false
end

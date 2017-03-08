# Variable declarations and converting to integers and booleans

puts "What is your name?"
employee_name = gets.chomp 


puts "How old are you?"
age = gets.chomp
age.to_i


puts "What year were you born?"
year = gets.chomp
year.to_i 


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



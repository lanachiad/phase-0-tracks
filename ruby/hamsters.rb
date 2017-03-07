puts "Hamster's name?"
hamster_name = gets.chomp 

puts "Volume level? (from 1-10)"
volume = gets.chomp

puts "Fur color?"
fur = gets.chomp

puts "Good candidate for adoption? (y/n)"
candidate = gets.chomp

puts "Estimated age?"
age = gets.chomp 

if age.empty?
	age = nil
end
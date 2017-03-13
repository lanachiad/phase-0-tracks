# Prompt user for the following information:
# Client name, age, number of children, decor theme, favorite color, if they like contemporary designs, if they like classic designs, how many rooms need to be redesigned
# Use symbols unless they have to be a string (for spacing or user-friendliness)
# Print hash back to the screen
# Give the user an opportunity to update a key (no loop, just once)
# Print the latest version of the hash

client_info = {

}


puts "Enter client's name:"
client_name = gets.chomp
client_info[:name] = client_name

puts "Enter client age:"
age = gets.chomp.to_i
client_info[:age] = age

puts "Enter number of children client has:"
children = gets.chomp.to_i
client_info[:children] = children

puts "Enter preferred decor theme:"
decor = gets.chomp
client_info[:decor] = decor

puts "Does client like contemporary furniture? (y/n)"
contemporary = gets.chomp

if contemporary == "y" || contemporary == "Y"
	contemporary = true
elsif contemporary == "n" || contemporary == "N"
	contemporary = false
end
client_info[:contemporary] = contemporary

puts "Does client like classical furniture? (y/n)"
classical = gets.chomp

if classical == "y" || classical == "Y"
	classical = true
elsif classical == "n" || classical == "N"
	classical = false
end
client_info[:classical] = classical

puts "How many rooms need a redesign?"
redesign_rooms = gets.chomp.to_i
client_info[:redesign] = redesign_rooms


p client_info
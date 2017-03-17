=begin

User enters first name
Save as variable first_name
User enters last name
Save as variable last_name
Create variable new_name that swaps first and last name
Split new_name into strings of letters in an array
Create vowel variable
Create consonant variable
Iterate through new_name and replace every vowel to the next one and every consonant to the next one
Print new name

=end


# # # # # # # # # # # # # # # #




def next_vowel
	puts "Enter your first name"
	first_name = gets.chomp

	puts "Enter your last name"
	last_name = gets.chomp

	swapped_full_name = last_name + " " + first_name

	vowels = "aeiou".split('')
	first_array = first_name.split('')
	
	first_array = first_array.map do |letter|
		if vowels.include?(letter)
			next_vowel = (vowels.index(letter)) + 1
			if letter == "u"
				p "a"
			else
				vowels[next_vowel]
			end
		else
			letter
		end
	end
	p first_array
end


next_vowel







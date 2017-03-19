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

def alias_maker

  all_names = []

  puts "Want to create a new alias? If not, type 'done'."
  answer = gets.chomp

  until answer == "done"

    puts "Enter your first name"
    first_name = gets.chomp.downcase
    puts "Enter your last name"
    last_name = gets.chomp.downcase

    swapped_full_name = last_name + " " + first_name
    swapped_full_name = swapped_full_name.split('')

    vowels = "aeiou".split('')
    consonant = "bcdfghjklmnpqrstvwxyz".split('')

    swapped_full_name = swapped_full_name.map do |char|
      if vowels.include?(char)
        next_vowel = (vowels.index(char)) + 1
        if char == "u"
          p "a"
        else
          vowels[next_vowel]
        end
      elsif consonant.include?(char)
        next_consonant = (consonant.index(char)) + 1
        if char == "z"
          p "b"
        else
          consonant[next_consonant]
        end
      else
        p char
      end
    end

    swapped_full_name = swapped_full_name.join('')
    p swapped_full_name

    all_names << swapped_full_name

    puts "Do you want to create another alias? If not, type 'done'."
    answer = gets.chomp
  end

  p all_names

end

alias_maker

=begin

def youreold
  first = "Bob"
  last = "Jones"
	puts "What's your age?"
  age = gets.chomp
  puts "You are #{age} years old!"
  yield(first, last)
end

youreold { |first, last| puts "Your name is #{first} #{last}!" }

=end

=begin

students = ["Bob", "Amy", "Mary", "Kim", "Tony", "Rob"]

pets = {cat: "kitten", dog: "puppy", deer: "doe", cow: "calf", goat: "kid", bear: "cub"}

# before
p "Before call:"
p students
p pets

# iterate array .each
students.each do |student|
 puts "Hi, #{student}!"
end

# iterate hash .each
pets.each do |adult, child|
	puts "The #{child} becomes a(n) #{adult}!"
end 

# iterate array .map!
students.map! do |student|
	student + "!"
end  

# after
p "After call"
p students
p pets

=end


letters = ["a", "b", "c", "d", "e"]

numbers = {one: 1, two: 2, three: 3, four: 4, five: 5}

# A method that iterates through the items, deleting any that meet a certain condition
p numbers
numbers.delete(:one)
p numbers

p letters
letters.delete("a")
p letters

# A method that filters a data structure for only items that do satisfy a certain condition
letters.select { |letter| letter == "b" }

numbers.select { |spell, int| int < 3 }

# A different method that filters a data structure for only items satisfying a certain condition
letters.reject { |letter| letter == "c" }

numbers.reject { |spell, int| int > 2 }

# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops
letters.drop_while { |letter| letter < "d" }


def encrypt
	puts "What is your password"
	input = gets.chomp
	index = 0
	while index < input.length
		input[index]  = input[index.next]
		if input[index] == "z"
			z.next = "a"
		end
		p input[index]
		index += 1
	end
end

def decrypt 
	puts "What is your encrypted password"
	input = gets.chomp
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < input.length


	end
end
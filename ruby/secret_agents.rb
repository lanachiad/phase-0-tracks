=begin

Encrypt:
Ask user for password
Store password as variable
Loop through the string
Change each letter to next one

Decrypt:
Ask user for encrypted password
Store encrypted password as variable
Create variable called alphabet, value is alphabet as a string
Reverse alphabet
Loop through the string
Change each letter to next one

=end

def encrypt(pass)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < pass.length
		letter = pass[index]
		number = alphabet.index(letter)
		if pass[index] == "z"
			p "a"
		else
			p alphabet[number + 1]
		end
		index += 1
	end
end

def decrypt(pass)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < pass.length
		letter = pass[index]
		number = alphabet.index(letter)
		p alphabet[number - 1]
		index += 1
	end
end



# decrypt(encrypt("swordfish"))
# "t"
# "x"
# "p"
# "s"
# "e"
# "g"
# "j"
# "t"
# "i"
# secret_agents.rb:37:in `decrypt': undefined method `length' for nil:NilClass (NoMethodError)
# 	from secret_agents.rb:45:in `<main>'
# We got this error with the thought being that the program can't encrypt and decrypt on same line.



# Ask user if they want to decrypt or encrypt
# After they answer, ask the user for the password they want to use
# Based on their choice, it will trigger the decrypt or encrypt method

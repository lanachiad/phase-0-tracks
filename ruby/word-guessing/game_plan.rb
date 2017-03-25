# Pseudocode

=begin 

+ Create class called Game
	- Read & write secret_word (attr_accessor)
	- Read word_blanks (attr_reader)
	- Initialize with the parameter of secret_word
		: @secret_word equal to secret_word
		: @word_blanks equal to word_blanks
	- def get_word
		: Ask Player 1 to type in the secret_word
		: @secret_word equal to secret_word as an array of strings with each letter
	- def print_blanks
	 	: Go through each character in @secret_word and each one with "_"
	 	: @secret_word.each do |char|
	 		char = "_ "
	 	  end
	- def guess
		+ Number of tries set to 0
		+ Create guessed and set it to an empty array
		+ Until number of tries reaches secret_word.length
		- Store letter in guessed array
		- Check if guess is equal guessed[index]
			: If yes, print "You've already guessed this letter!" and break
			: If not:
				~ Check if guess is equal to secret_word[index]
					= Print "Yup! That's there!"
					= Replace placeholder "_" with the guessed letter
				~ If it doesn't equal
					= Print "That letter isn't in the word"
					= Print @secret_word with placeholder "_"
		- Add 1 to number of tries
		- Print "Guess again!"
	- def result
		+ If secret_word includes any placeholder "_"
			- Print "Aw man, you didn't guess the word. Player 1 wins!"
		+ Else
			- Print "Woohoo! You got the word! Player 2 wins!"
end

+ Ask Player 2 to guess a letter in the word
+ Gets.chomp input as guess

=end









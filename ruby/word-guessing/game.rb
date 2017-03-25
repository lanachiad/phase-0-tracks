class Game

	attr_accessor :secret_word

	def initialize
		puts "Welcome to the Word Guessing Game! It requires two players to play."
		puts "Player 1, type in a word you'd like Player 2 to have to guess."
		@secret_word = gets.chomp
	end

end

new_game = Game.new 
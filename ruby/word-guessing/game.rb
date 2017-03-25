class Game

  attr_accessor :secret_word, :guess

  def initialize
    @secret_word = secret_word
    @guess = guess
  end

  def gets_word(secret_word)
    puts "Welcome to the Word Guessing Game! It requires two players to play."
    puts "Player 1, type in a word you'd like Player 2 to have to guess."
    @secret_word = gets.chomp.split('')
    puts "#{secret_word}"
  end

  def guess_attempt(guess)
  	puts "Player 2, type in a letter you think is in the secret word."
  	@guess = gets.chomp
  	puts "You guessed #{guess}."
  end

end

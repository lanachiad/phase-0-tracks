class Word_Game

  attr_accessor :secret_word, :guess

  def initialize
    @secret_word
    @guess
  end

  def gets_word
    puts "Welcome to the Word Guessing Game! It requires two players to play."
    puts "Player 1, type in a word you'd like Player 2 to have to guess."
    @secret_word = gets.chomp.split('')
    puts "#{secret_word}"
  end

  def guess_attempt
    puts "Player 2, type in a letter you think is in the secret word."
    @guess = gets.chomp
  end

  def loop_attempts
    number_tries = @secret_word.length
    attempt_num = 0
    while attempt_num < number_tries
      guess_attempt
      compare_guess(@guess)
      attempt_num += 1
    end
  end

  def compare_guess(guess)
    if @secret_word.include? guess
      puts "You guessed #{guess}"
      puts "You guessed correctly!"
    else
      puts "You guessed #{guess}"
      puts "Womp womp! No #{guess} here. Try again."
    end
  end

end

game = Word_Game.new
game.gets_word
game.loop_attempts
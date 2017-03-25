class Word_Game

  attr_accessor :secret_word, :guess, :blank_secret

  def initialize
    @secret_word
    @guess
    @blank_secret
  end

  def gets_word
    puts "Welcome to the Word Guessing Game! It requires two players to play."
    puts "Player 1, type in a word you'd like Player 2 to have to guess."
    @secret_word = gets.chomp.split('')
  end

  def guess_attempt
    puts "Player 2, type in a letter you think is in the secret word."
    @guess = gets.chomp
  end

  def loop_attempts
    print_blank
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
      update_blank
    else
      puts "You guessed #{guess}"
      puts "Womp womp! No #{guess} here. Try again."
      update_blank
    end
  end

  def print_blank
    @blank_secret = []
    @blank_secret.fill("_", blank_secret.size, @secret_word.length)
    p @blank_secret.join(' ')
  end

  def update_blank
    position = secret_word.index(guess)
    if position == nil
      p @blank_secret.join(' ')
    else
      @blank_secret[position] = guess
      p @blank_secret.join(' ')
    end
  end

  def result
    if @blank_secret.include? ("_")
      puts "Aw man, you didn't guess the word. Player 1 wins!"
    else
      puts "Woohoo! You got the word! Player 2 wins!"
    end
  end

end

game = Word_Game.new
game.gets_word
game.loop_attempts
game.result

require_relative 'game'

describe Word_Game do

  let (:game) {Word_Game.new}
  let (:secret_word) {"test"}
  let (:guess) {"t"}

  it "Creates secret_word variable" do
    expect(game.gets_word).to be == ["t", "e", "s", "t"]
  end

  it "Player 1 guesses a letter in secret_word" do
    expect(game.guess_attempt).to be == "t"
  end

  it "Compare to see if guessed letter is in secret_word array" do
  	expect(game.compare_guess("t"))#to print "You guessed correctly!"
  end

  it "Prints _ in place of each letter in secret_word" do
  	expect(game.print_blank)#to print "_ _ _ _"
  end

  it "Updates the blank_secret array to include the correctly guessed letter in the right place" do
  	expect(game.update_blank)#to print "t _ _ t"
  end

  it "Print success message" do
  	expect(game.result)#to print "Woohoo! You got the word! Player 2 wins!"
  end

end

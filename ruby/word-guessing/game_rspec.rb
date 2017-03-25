require_relative 'game'

describe Word_Game do

  let (:game) {Word_Game.new}

  it "Creates secret_word variable" do
    expect(game.gets_word).to eq @secret_word
  end

  it "Player 1 guesses a letter in secret_word" do
  	expect(game.guess_attempt).to eq @guess
  end

  it "" do
  	expect()
  end

end

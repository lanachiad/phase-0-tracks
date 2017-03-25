require_relative 'game'

describe Game do

  let (:game) {Game.new}

  it "Creates secret_word variable" do
    expect(game.gets_word(@secret_word)).to eq @secret_word
  end

  it "Player 1 guesses a letter in secret_word" do
  	expect(game.guess_attempt(@guess)).to eq @guess
  end

end

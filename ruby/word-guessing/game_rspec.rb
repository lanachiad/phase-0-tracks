require_relative 'game'

describe Word_Game do

  let (:game) {Word_Game.new}

  

  it "Creates secret_word variable" do
    expect(game.gets_word).to be == ["t", "e", "s", "t"]
  end

  it "Player 1 guesses a letter in secret_word" do
  	expect(game.guess_attempt).to be == "t"
  end

  # it "Loop through attempts until number of attempts is equal to number of letters in secret_word" do
  # 	expect(game.guess_attempt). to eq attempt_num == number_tries
  # end

end

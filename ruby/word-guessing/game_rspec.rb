require_relative 'game'

describe Game do
	let (:game) {Game.new}

	it "Creates secret_word variable" do
		expect(game.secret_word)
	end
end
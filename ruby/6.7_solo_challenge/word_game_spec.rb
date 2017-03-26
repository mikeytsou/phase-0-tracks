require_relative 'word_game'
describe WordGame do
  let(:game) {WordGame.new("dev bootcamp")}

  context "#initialize" do
    it "check initialize @word" do
      expect(game.word).to eq "dev bootcamp"
    end

end
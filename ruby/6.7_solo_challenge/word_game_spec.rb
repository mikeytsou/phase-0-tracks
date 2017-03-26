require_relative 'word_game'
describe WordGame do
  let(:game) {WordGame.new("dev bootcamp")}

  context "#initialize" do
    it "check initialize @word" do
      expect(game.word).to eq "dev bootcamp"
    end

    it "check initialize @encrypt_word" do
      expect(game.encrypt_word).to eq "___ ________"
    end

    it "check initialize @guess_limit" do
      expect(game.guess_limit).to eq 11
    end
  end
end
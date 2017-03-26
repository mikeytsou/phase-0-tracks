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

    it "check initialize @wrong_letters_guessed" do 
      expect(game.wrong_letters_guessed).to eq []
    end

    it "check initialize @right_letters_guessed" do 
      expect(game.right_letters_guessed).to eq []
    end

    it "check initialize @game_over" do 
      expect(game.game_over).to eq false
    end    
  end

  context "#wrong_letter_check" do
    it "check if letter already exists in @wrong_letters_guessed array" do 
      game.wrong_letters_guessed << "q"
      expect(game.wrong_letter_check("q")).to eq "___ ________"
    end

    it "check if letter is passed into @wrong_letters_guessed array" do
      game.wrong_letter_check("q")
      expect(game.wrong_letters_guessed).to eq ["q"]
    end

    it "check if @guess_limit updates" do 
      game.wrong_letter_check("q")
      expect(game.guess_limit).to eq 10
    end
  end

  context "#right_letter_check" do
    it "check if letter already exists in @right_letters_guessed array" do
      game.right_letters_guessed << "o"
      expect(game.right_letter_check("o")).to eq "___ ________"
    end

    it "check if letter is passed into @right_letters_guessed array" do
      game.right_letters_guessed << "o"
      expect(game.right_letters_guessed).to eq ["o"]
    end    
  end
end
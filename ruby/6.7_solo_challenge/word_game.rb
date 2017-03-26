class WordGame
  attr_reader :word, :encrypt_word, :guess_limit, :wrong_letters_guessed, :right_letters_guessed, :game_over

  def initialize(word)
    @word = word.downcase
    @encrypt_word = @word.gsub(/[a-zA-Z]/, "_")
    @guess_limit = @word.split.join.length
    @wrong_letters_guessed = []
    @right_letters_guessed = []
    @game_over = false
  end

end



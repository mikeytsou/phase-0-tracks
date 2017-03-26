class WordGame
  attr_reader :word, :encrypt_word, :guess_limit

  def initialize(word)
    @word = word.downcase
    @encrypt_word = @word.gsub(/[a-zA-Z]/, "_")
    @guess_limit = @word.split.join.length

  end

end



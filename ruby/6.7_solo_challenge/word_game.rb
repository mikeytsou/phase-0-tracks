class WordGame
  attr_reader :word, :encrypt_word

  def initialize(word)
    @word = word.downcase
    @encrypt_word = @word.gsub(/[a-zA-Z]/, "_")

  end

end



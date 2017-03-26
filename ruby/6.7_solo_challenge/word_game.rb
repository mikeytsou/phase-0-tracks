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

  def wrong_letter_check(letter)
    if @wrong_letters_guessed.include?(letter)
      puts "Already used '#{letter}'"
      @encrypt_word
    elsif !@word.include?(letter)
      @guess_limit -= 1      
      @wrong_letters_guessed << letter 
    end
  end

  def right_letter_check(letter)
    if @right_letters_guessed.include?(letter)
      puts "Already used '#{letter}'"
      @encrypt_word

    end
  end 

end



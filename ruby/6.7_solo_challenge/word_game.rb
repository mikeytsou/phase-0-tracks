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
    elsif @word.include?(letter)
      @right_letters_guessed << letter
      replace_letters(letter)
    end
  end

  def replace_letters(letters)
    idx = 0
    while idx < @word.length
      if @word[idx] == letters
        @encrypt_word[idx] = letters     
      end
      idx += 1
    end
    @encrypt_word
  end  

  def game_completed
    if @guess_limit == 0
      @game_over = true
    elsif @encrypt_word == @word
      @game_over = true
    end
  end
end

# USER INTERFACE
loop do
  puts "*" * 50
  puts "User1 - enter word(s) to be guessed:"
  word_input = gets.chomp.to_s
  game = WordGame.new(word_input)
  
  puts "*" * 50
  puts "User2 - guess the word(s) below:"
  puts game.encrypt_word

  while !game.game_over
    puts "*" * 50
    puts "Enter a letter(you have #{game.guess_limit} attempts):"
    guess_letter = gets.chomp.downcase[0]  

    if game.right_letter_check(guess_letter)
      puts "Correct! Letters used: #{game.wrong_letters_guessed}"
      puts game.encrypt_word
      puts "Congratulations! You guessed the word!" if game.game_completed    
    elsif game.wrong_letter_check(guess_letter)
      puts "Wrong! Letters used: #{game.wrong_letters_guessed}"
      puts game.encrypt_word
      puts "Loser! The word(s) was '#{game.word}'" if game.game_completed
    end
  end

  puts "*" * 50
  puts "Would you like to play again?(type y/n)"
  continue = gets.chomp.downcase[0]
  if continue == "n"
    puts "Thanks for playing~ Bye!" 
    break
  end
end


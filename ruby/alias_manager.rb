# Release 0
=begin
-Define method that loops through string, replace all vowels and consonants, and store result in new variable
  -Conditionally test if letter in loop is a vowel or consonant
-Define method that converts string to array, swap and reverse its order, and capitalize
-Define methods that advance the current letter of vowels and consonants
-Use methods created to return result
=end

def swap_case(name) # converts string to array, capitalize each index, and return reversed string
  array_name = name.split(' ')
  array_name.each do |idx|
    idx.capitalize!
  end
  array_name.reverse.join(' ')
end

def next_vowel(letter) # if letter is a vowel, assigns next vowel
  vowels = 'aeiou'
  vowels[(vowels.index(letter) + 1) % vowels.length] # % allows to loop vowels infinitely
end

def next_consonant(letter) 
  consonants = 'bcdfghjklmnpqrstvwxyz'
  consonants[(consonants.index(letter) + 1) % consonants.length]
end

def alias_manager(name)
  result = ''

  name.each_char do |letter| # .each_char loops a string, similar to .each for arrays

  end
  result
end







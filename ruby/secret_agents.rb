# Release 0
=begin
1. A scope is essentially the visibility of ruby variables, constants, and methods and its availability at any given moment.
   A local variable is only visible/available within the block or function.
   A global variable is visible/available throughout the program.
   A instance variable is only visible/available to one particular instance of a class.
   A class variable is only visible/available to the class they are defined in.
2. A implicit return is the last evaluated expression in a method and returned without explicitly typing "return".
3. A side effect of a method is any observable change caused by calling a function. For a function to be free of side effects, it must do nothing other than provide a return value.
   A side effect differs from a return value of a method because return values just simply returns a value or the method. Whereas a side effect can provide additional information with or without a return value.
4. Calling a method that was created inside another method you created will give you an error.
=end

# METHOD DECLARATIONS
# Release 2
=begin
#1 Encrypt
  -Loop through encrypted string with while loop
  -Set condition for case of "empty space" in encrypted string and add it to result
  -If previous condition isn't met, use string index to find alphabet index
  -Add alphabet index by 1 and use modulo to loop alphabet array to advance letter
  -Add final alphabet index to result
  -Return result
=end

def encrypt(string)
  alphabet = ("a".."z").to_a
  result = ""
  idx = 0

  while idx < string.length
    letter = string[idx]

    if letter == " "
      result += " "
    else
      n = alphabet.index(letter)
      n_plus = (n + 1) % alphabet.length
      result += alphabet[n_plus]
    end
    idx += 1
  end
  return result
end

=begin
#2 Decrypt
-Define method with string parameter:
  -Create and assign variables
  -Loop through encrypted string with times loop
  -Set condition for case of "empty space" in encrypted string and add it to result
  -If previous condition isn't met, use string index to find alphabet index
  -Subtract alphabet index by 1 and use modulo to loop alphabet array to find previous letter
  -Add final alphabet index to result
  -Return result
=end

def decrypt(string)
  alphabet = ("a".."z").to_a
  result = ""
  idx = string.length
  idx.times do |i|
    letter = string[i]

    if letter == " "
      result += " "
    else
      n = alphabet.index(letter)
      n_minus = (n - 1) % alphabet.length
      result += alphabet[n_minus]
    end
  end
  return result
end

=begin
puts encrypt("a b c")
puts encrypt("z e d")
puts decrypt("b c d")
puts decrypt("a f e")
puts decrypt(encrypt("swordfish")) # Calling the "swordfish" argument in the method encrypt nested in decrypt works because the function executes the encrypt method nested followed by the decrypt method
=end

# DRIVER CODE
# Release 5
=begin
-Ask user if they want to encrypt or decrypt a password
-Loop so only two possible answer
-Ask user for password
-Set conditions for the proper methods to execute
=end




















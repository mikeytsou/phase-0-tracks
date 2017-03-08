# Release 1 & 2
puts "What is the hamsters name?"
name = gets.chomp

puts "How loud is the hamsters from a 1 to 10 scale?"
volume = gets.chomp.to_i

puts "What is the fur color of the hamster?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? Type 'y' or 'n'."
adoption = gets.chomp.downcase
until adoption == "y" || adoption == "n"
  puts "Is the hamster a good candidate for adoption? Type 'y' or 'n'."
  adoption = gets.chomp.downcase
end

puts "How old is the hamster?"
age = gets.chomp
if age == ""
  age = nil
else
  age = age.to_i
end
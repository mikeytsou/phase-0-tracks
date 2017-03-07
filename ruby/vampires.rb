
# Release 1
puts "What is your name?"
name = gets.chomp.to_s

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i
# Added a loop to both garlic and insurance questions to ensure only two possible answers.
puts "Our company cafeteria serves garlic bread. Should we order some for you? Type 'y' or 'n'."
garlic_bread = gets.chomp.downcase
until garlic_bread == "y" || garlic_bread == "n"
  puts "Our company cafeteria serves garlic bread. Should we order some for you? Type 'y' or 'n'."
  garlic_bread = gets.chomp.downcase
end

puts "Would you like to enroll in the company's health insurance? Type 'y' or 'n'."
insurance = gets.chomp.downcase
until insurance == "y" || insurance == "n"
  puts "Would you like to enroll in the company's health insurance? Type 'y' or 'n'."
  insurance = gets.chomp.downcase
end

real_age = Time.now.year - year

# Release 2
if (real_age == age) && (garlic_bread == "y" || insurance == "y")
  puts "Probably not a vampire."
elsif (real_age != age) && (garlic_bread == "n" || insurance == "n")
  puts "Probably a vampire."
elsif (real_age != age && garlic_bread = "n" && insurance = "n") #This condition is never met because the || boolean on line 39 overrides this condition.
  puts "Almost certainly a vampire."
elsif name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."
else
  puts "Results inconclusive."
end


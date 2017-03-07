
# Release 3
puts "How many employees will be interviewed?"
number_of_employees = gets.chomp.to_i
interview = 1

while interview <= number_of_employees
# Release 1
  puts "What is your name?"
  name = gets.chomp.to_s

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  year = gets.chomp.to_i

  real_age = Time.now.year - year

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

# Release 2
  if (real_age == age) && (garlic_bread == "y" || insurance == "y")
    puts "Probably not a vampire."
  elsif (real_age != age) && (garlic_bread == "n" || insurance == "n")
    puts "Probably a vampire."
  elsif (real_age != age && garlic_bread == "n" && insurance == "n") # This condition is never met because the || boolean on line 39 overrides this condition.
    puts "Almost certainly a vampire."
  elsif name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire."
  else
    puts "Results inconclusive."
  end

# Release 4
# Not sure if this release is in the correct location in the program. I was going to drop it in between release 1 and 2 but thought this was more logical.
  puts "List all allergies you might have one at a time. Type 'done' when finished."
  allergies = gets.chomp.to_s

  while allergies != "done"
    if allergies == "sunshine"
      puts "Probably a vampire."
      break
    else
      puts "List all allergies you might have one at a time. Type 'done' when finished."
      allergies = gets.chomp.to_s
    end
  end  
  interview += 1
end

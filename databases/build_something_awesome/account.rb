require "sqlite3"
require_relative "account_methods"

# USER INTERFACE
def program_intro(db)
  puts "Welcome to Global Bank"
  puts "*" * 100  
  action = nil
  until action == 1 || action == 2 || action == 3
    puts "What would you like to do?\n1. Log In\n2. Create Account\n3. Exit"
    action = gets.chomp.to_i
    puts "*" * 100    
    if action == 3
      puts "Goodbye!"
      break
    end
  end
  action
end



db = create_database
action = program_intro(db)

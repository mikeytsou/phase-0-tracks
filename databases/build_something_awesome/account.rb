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

def program_setup(db, action)
  date = Time.now
  if action == 2 # Create Account
    puts "Create a username:"
    valid_name = false  
    until valid_name == true
      username = gets.chomp.downcase
      puts "*" * 100
      if check_existing_user(db, username)
        puts "Enter another username, that one is taken."
      else
        valid_name = true
      end
    end
    puts "How much money would you like to initially deposit? (ex. 100.00)"
    initial_deposit = gets.chomp.to_f
    puts "*" * 100
    create_new_user(db, username, date, initial_deposit)
    print_balance_log(db, username)
  elsif action == 1 # Log In
    puts "Enter your username:"
    valid_name = false
    until valid_name == true
      username = gets.chomp.downcase
      puts "*" * 100
      if check_existing_user(db, username)
        print_balance_log(db, username)
        valid_name = true
      else
        puts "Username doesn't exist. Try again."
      end
    end
  end
  username
end

db = create_database
action = program_intro(db)
username = program_setup(db, action)
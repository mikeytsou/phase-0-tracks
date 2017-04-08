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

def program_navigate(db, username)
  date = Time.now
  puts "*" * 100
  action = nil
  until action == 4
    puts "What would you like to do?\n1. View account history\n2. Make a deposit\n3. Make a withdrawal\n4. Exit"
    action = gets.chomp.to_i
    puts "*" * 100    
    if action == 4 # Exit program
      puts "Goodbye!"
    elsif action == 3 # Make a withdrawal
      deposit = false
      print_balance_log(db, username)
      puts "*" * 100
      puts "How much money would you like to withdraw? (ex. 100.00)"
      withdraw_amount = gets.chomp.to_f
      puts "*" * 100
      transaction(db, username, date, withdraw_amount, deposit)
      print_balance_log(db, username)
      puts "*" * 100
    elsif action == 2 # Make a deposit
      deposit = true
      print_balance_log(db, username)
      puts "*" * 100
      puts "How much money would you like to deposit (ex. 100.00)"
      deposit_amount = gets.chomp.to_f
      puts "*" * 100
      transaction(db, username, date, deposit_amount, deposit)
      print_balance_log(db, username)
      puts "*" * 100
    elsif action == 1 # View account history
      print_account_log(db, username)
      puts "*" * 100
    end
  end
end

db = create_database
action = program_intro(db)
username = program_setup(db, action)
program_navigate(db, username)
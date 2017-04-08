require "sqlite3"
require_relative "account_methods"
# Banking application that allows user to create account, deposit and withdraw money while total balance updates in real time, and view account history 

# USER INTERFACE
# Starts the program by asking if you want to [1]log in, [2]create account, or [3]exit
# Returns 1, 2, or 3
def program_intro(db)
  puts "Welcome to Global Bank!"
  puts "Created by Mike Tsou on 04-08-2017"
  puts "*" * 100  
  action = nil
  until action == 1 || action == 2 || action == 3
    puts "What would you like to do?(enter a number)\n1. Log In\n2. Create Account\n3. Exit"
    action = gets.chomp.to_i
    puts "*" * 100    
    if action == 3
      puts "Goodbye!"
      break
    end
  end
  action
end

# Set up program to create account or log in existing account
# Returns the new or existing account username
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
    puts "How much money would you like to initially deposit?(ex. 100.00)"
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

# Takes username and navigates through program menu for [1]viewing account, [2]deposit, [3]withdraw, or [4]exit
def program_navigate(db, username)
  date = Time.now
  puts "*" * 100
  action = nil
  until action == 4
    puts "Global Bank user: #{username}"
    puts "What would you like to do?(enter a number)\n1. View account history\n2. Make a deposit\n3. Make a withdrawal\n4. Exit"
    action = gets.chomp.to_i
    puts "*" * 100    
    if action == 4 # Exit program
      puts "Thanks for using Global Bank!\nGoodbye #{username}!"
    elsif action == 3 # Make a withdrawal
      deposit = false
      print_balance_log(db, username)
      puts "*" * 100
      puts "How much money would you like to withdraw?(ex. 100.00)"
      withdraw_amount = gets.chomp.to_f
      puts "*" * 100
      transaction(db, username, date, withdraw_amount, deposit)
      print_balance_log(db, username)
      puts "*" * 100
    elsif action == 2 # Make a deposit
      deposit = true
      print_balance_log(db, username)
      puts "*" * 100
      puts "How much money would you like to deposit(ex. 100.00)"
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

# DRIVER
db = create_database # Creates database and store in variable
action = program_intro(db) # Program introduction and store return value in variable
username = program_setup(db, action) # Set up program by passing argument from program_intro and store return value in variable
program_navigate(db, username) # Navigate program menu by passing argument from program_setup

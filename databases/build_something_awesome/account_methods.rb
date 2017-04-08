require "sqlite3"

# Create database and table
def create_database
  db = SQLite3::Database.new("account.db")
  db.results_as_hash = true
  create_accounts_table_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS accounts (
      id INTEGER PRIMARY KEY,
      username TEXT,
      date DATE,
      description TEXT,
      amount DECIMAL,
      balance DECIMAL    
    )
  SQL
  db.execute(create_accounts_table_cmd)
  db
end

# Create new user
def create_new_user(db, username, date, amount)
  description = "Initial deposit"
  format_date = date_conversion(date)
  format_amount = currency_conversion(amount)
  balance = format_amount
  db.execute("INSERT INTO accounts (username, date, description, amount, balance) VALUES (?, ?, ?, ?, ?)", [username, format_date, description, format_amount, balance])
end

# Check for existing user, returns boolean
def check_existing_user(db, username)
  db.execute("SELECT 1 FROM accounts WHERE username = ?", [username]).length > 0
end

# Round two decimal points
def currency_conversion(currency)
  currency_convert = (currency).round(2)
end

# Converts date to mm/dd/yyyy format
def date_conversion(date)
  date_convert = date.strftime("%m-%d-%Y")
end

# Return most recent balance
def balance(db)
  data = db.execute("SELECT id FROM accounts")
  id = data[-1]["id"]
  balance = db.execute("SELECT balance FROM accounts WHERE id=?", [id])
  balance[0][0]
end

# Depending on deposit(add) or withdraw(subtract), update the balance 
def transaction(db, username, date, amount)
  format_date = date_conversion(date)
  format_amount = currency_conversion(amount)
  current_balance = balance(db)
  if deposit
    description = "Deposit"
    new_balance = current_balance + format_amount
    format_balance = currency_conversion(new_balance)
    db.execute("INSERT INTO accounts (username, date, description, amount, balance) VALUES (?, ?, ?, ?, ?)", [username, format_date, description, format_amount, format_balance])
  elsif withdraw
    description = "Withdraw"
    new_balance = current_balance - format_amount
    format_balance = currency_conversion(new_balance)    
    db.execute("INSERT INTO accounts (username, date, description, amount, balance) VALUES (?, ?, ?, ?, ?)", [username, format_date, description, format_amount, format_balance])
  end
end

def deposit
  true
end

def withdraw
  true  
end

# Print detailed account log(key-value pairs)
def print_account_log(db, username)
  accounts = db.execute("SELECT * FROM accounts")

  accounts.each do |info|
    puts "-" * 100
    puts "Date: #{info['date']} | Description: #{info['description']} | Amount: #{info['amount']} | Balance: #{info['balance']}"
  end
end

# USER INTERFACE
def start_program(db)
  date = Time.now
  puts "Welcome to Global Bank"
  puts "-" * 100  
  action = nil
  until action == 1 || action == 2 || action == 3
    puts "What would you like to do?\n1. Log In\n2. Create Account\n3. Exit"
    puts "-" * 100
    action = gets.chomp.to_i
  end
  
  if action == 3 # Exit
    puts "Goodbye~"

  elsif action == 2 # Create Account
    puts "Create a username:"
    valid_name = false  
    until valid_name == true
      username = gets.chomp.downcase
      if check_existing_user(db, username)
        puts "Enter another username, that one is taken."
      else
        valid_name = true
      end
    end
    puts "How much money would you like to initially deposit? (ex. 100.00)"
    initial_deposit = gets.chomp.to_f
    create_new_user(db, username, date, initial_deposit)

  elsif action == 1 # Log In
    puts "Enter your username:"
    valid_name = false
    until valid_name == true
      username = gets.chomp.downcase
      if check_existing_user(db, username)
        valid_name = true
      else
        puts "Username doesn't exist. Try again."
      end
    end
  end
end





























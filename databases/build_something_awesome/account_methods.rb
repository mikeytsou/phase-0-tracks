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
def balance(db, username)
  user_id = db.execute("SELECT id FROM accounts WHERE username=?", [username])
  id = user_id[-1]["id"]
  balance = db.execute("SELECT balance FROM accounts WHERE id=?", [id])
  balance[0][0]
end

# Depending on deposit(add) or withdraw(subtract), update the balance 
def transaction(db, username, date, amount, deposit)
  format_date = date_conversion(date)
  format_amount = currency_conversion(amount)
  current_balance = balance(db, username)
  if deposit
    description = "Deposit"
    new_balance = current_balance + format_amount
    format_balance = currency_conversion(new_balance)
    db.execute("INSERT INTO accounts (username, date, description, amount, balance) VALUES (?, ?, ?, ?, ?)", [username, format_date, description, format_amount, format_balance])
  elsif !deposit
    description = "Withdraw"
    new_balance = current_balance - format_amount
    format_balance = currency_conversion(new_balance)    
    db.execute("INSERT INTO accounts (username, date, description, amount, balance) VALUES (?, ?, ?, ?, ?)", [username, format_date, description, format_amount, format_balance])
  end
end

# Print detailed balance log(key-value pairs)
def print_balance_log(db, username)
  balances = db.execute("SELECT * FROM accounts WHERE username=? ORDER BY id DESC LIMIT 1", [username])
  balances.each do |info|
    puts "-" * 100 
    puts "Most recent transaction and current balance:"
    puts "Username: #{info['username']} | Date: #{info['date']} | Description: #{info['description']} | Amount: #{info['amount']} | Balance: #{info['balance']}"
    puts "-" * 100 
  end
end

# Print detailed account log(key-value pairs)
def print_account_log(db, username)
  accounts = db.execute("SELECT * FROM accounts WHERE username=?", [username])
  puts "Account history:"
  accounts.each do |info|
    puts "-" * 100
    puts "Username: #{info['username']} | Date: #{info['date']} | Description: #{info['description']} | Amount: #{info['amount']} | Balance: #{info['balance']}"
  end
  puts "-" * 100
end

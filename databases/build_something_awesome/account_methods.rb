require "sqlite3"

# Create database and table
def create_database
  db = SQLite3::Database.new("account.db")
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


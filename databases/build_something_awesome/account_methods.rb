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

# Round two decimal points
def currency_conversion(currency)
  currency_convert = (currency).round(2)
end

# Converts date to mm/dd/yyy format
def date_conversion(date)
  date_convert = date.strftime("%d-%m-%Y")
end

# TEST
db = create_database
date = Time.now

create_new_user(db, "mikeytsou", date, 2313.4324)
p check_existing_user(db, "mikeytsou")
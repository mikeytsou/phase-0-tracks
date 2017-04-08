require "sqlite3"

# Create database
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






# TEST
database = create_database

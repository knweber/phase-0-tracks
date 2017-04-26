require 'sqlite3'

db = SQLite3::Database.new("movies.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS movies(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    rating INT,
    watch_again BOOLEAN
  )
SQL

db.execute(create_table_cmd)


puts "Hello there! Welcome to your personalized movie rating database. Please enter the title of the last movie you saw. If you wish to exit, type 'exit.'"
first_answer = gets.chomp

puts "What rating do you believe this movie deserves?"
rating = gets.chomp

puts "Would you see this movie again? (y/n)"
see_again = gets.chomp


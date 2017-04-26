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

def create_movie_listing(db, title, rating, watch_again)
	 db.execute("INSERT INTO movies (title, rating, watch_again) VALUES (?, ?, ?)", [title, rating, watch_again])
end

# user interface

puts "Hello there! Welcome to your personalized movie rating database. Do you wish to enter a movie? If so, type 'y'. Otherwise, type 'n'."
@first_answer = gets.chomp

@title = ""

def over
	if @first_answer.downcase == "y"
		false
	elsif @first_answer.downcase == "n" 
		puts "Thank you. Goodbye!"
		true
	end
end

until over == true
	puts "Please enter a movie title. If you wish to exit, type 'exit'."
	@title = gets.chomp
		if @title == "exit"
			puts "Thank you. Goodbye!"
			break
		end
	puts "What rating do you believe this movie deserves, on a scale from 0-10?"
	rating = gets.chomp
	puts "Would you see this movie again? (y/n)"
	see_again = gets.chomp
		if see_again == "y"
			true
		else
			false
		end
	create_movie_listing(db, @title, rating, see_again)
end
		
	

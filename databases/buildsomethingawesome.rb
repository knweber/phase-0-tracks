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


def update_movie_rating(db, title, rating)
	db.execute("UPDATE movies SET rating = ? WHERE title = ?", [rating, title])
end

def print_table(db)
	p db.execute("SELECT movies.title, movies.rating FROM movies")
end

def over
	if @first_answer.downcase == "y"
		false
	elsif @first_answer.downcase == "n" 
		puts "Thank you. Goodbye!"
		true
	end
end

# user interface

puts "Hello there! Welcome to your personalized movie rating database.\nDo you wish to enter a new movie or update a rating? If so, type 'y'. Otherwise, type 'n'."
@first_answer = gets.chomp

until over == true
	puts "If you wish to enter a new movie, type 'new'.\nTo update a movie's rating instead, type 'update'.\nTo exit, type 'exit'."
	input = gets.chomp
		if input.downcase == "new" 
			puts "What is the movie's title?"
			title = gets.chomp
			puts "What rating do you believe this movie deserves, on a scale from 0-10?"
			rating = gets.chomp
			puts "Would you see this movie again? (y/n)"
			see_again = gets.chomp
				if see_again == "y"
					true
				else
					false
				end
			create_movie_listing(db, title, rating, see_again)
			print_table(db)
		elsif input.downcase == "update"
			print_table(db)
			puts "Which movie's rating would you like to update?"
			movie_to_update = gets.chomp
			puts "Please enter a new rating, on a scale from 0-10."
			new_rating = gets.chomp
			update_movie_rating(db, movie_to_update, new_rating)
			print_table(db)
		elsif input.downcase == "exit"
			puts "Thank you. Goodbye!"
			break
		end		
end
		
	

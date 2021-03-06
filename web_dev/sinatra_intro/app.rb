# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# # write a basic GET route
# # add a query parameter
# # GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# # write a GET route with
# # route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# # write a GET route that retrieves
# # all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# # write a GET route that retrieves
# # a particular student
get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# # write a GET route that retrieves
# # an address
get '/contact' do
  "42 Wallaby Way, Syndey, NSW, Australia"
end

# # write a GET route with 
# # a name parameter
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# # write a GET route that
# # adds two numbers together
# # and returns the sum
get '/:first/add/:second' do
  sum = params[:first].to_i + params[:second].to_i
  "#{sum}"
end

# BONUS: write a GET route that
# allows user to search for students
# studying at a particular campus
get '/students/campus/:campus' do
  students = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus].to_s])
  students_at_campus = ""
  students.each do |student|
    students_at_campus << "Name: #{student['name']}<br>"
  end
  students_at_campus
end
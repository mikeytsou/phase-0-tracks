# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
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

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Release 0: Add Routes
get '/contact' do
  "633 Folsom St, San Francisco, CA 94107"
end

get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

get '/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  result = num1 + num2

  "#{num1} plus #{num2} is equal to #{result}"
end

get '/students/search/:campus' do
  campus_data = db.execute("SELECT * FROM students WHERE campus=?", params[:campus])
  campus_data.to_s
  response = ""

  campus_data.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# Release 1: Research on Your Own
# Is Sinatra the only web app library in Ruby? What are some others?
# Ruby on Rails, Padrino, and Merb are a few of many web frameworks for Ruby

# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
# PostgreSQL, Activerecord, MongoDB, and MySQL are a few options when using Sinatra

# What is meant by the term web stack?
# Web stack refers to the components or technologies/languages/operating systems/etc used to build a website. For example, the MEAN stack consists of MongoDB, Express.js, Angular.js, and node.js
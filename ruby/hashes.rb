# Release 1
=begin
puts "INTERIOR DESIGNER JOB APPLICATION"
application = {
  name: "sam",
  address: "1 Fake Drive",
  email: "fake@email.com",
  phone: "111-222-3333"
}

application[:email] = "anotherfake@email.com"
application[:hire] = "yes"

p application
=end

# Release 3
=begin
-Create empty hash
-Ask client for details with keys and values
-Use combinations of ruby objects
=end

puts "Interior Design Client Information"
client_info = {}

puts "What is your name?"
client_info[:name] = gets.chomp

puts "How old are you?"
client_info[:age] = gets.chomp.to_i

puts "How many children do you have?"
client_info[:children] = gets.chomp.to_i

puts "Do you offer custom decor themes? Type 'y' or 'n'."
client_info[:theme] = gets.chomp == 'y' ? true : false

puts "Do you have any experience? Type 'y' or 'n'."
client_info[:experience] = gets.chomp == 'y' ? true : false

p client_info


















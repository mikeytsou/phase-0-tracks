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
-Ask user for details with keys and values
-Demonstrate ability to use combinations of ruby objects
-Set condition if user wants to update keys or values
-Print result
=end

puts "Interior Design Client Information"
client_info = {}

puts "What is your name?"
client_info[:name] = gets.chomp

puts "How old are you?"
client_info[:age] = gets.chomp.to_i

puts "How many children do you have?"
client_info[:children] = gets.chomp.to_i

puts "What are your decor themes?"
client_info[:theme] = gets.chomp

puts "Do you have any experience? Type 'y' or 'n'."
client_info[:experience] = gets.chomp == 'y' ? true : false

puts "Your current information: #{client_info}"
puts "Name a key you would like to update or type 'none' to complete."
update = gets.chomp

if update == 'none'
  puts "Thanks for providing information"
elsif update.to_sym == :name
  puts "What is your name?"
  client_info[:name] = gets.chomp
  puts "Your updated information: #{client_info}"
elsif update.to_sym == :age
  puts "How old are you?"
  client_info[:age] = gets.chomp.to_i
  puts "Your updated information: #{client_info}"
elsif update.to_sym == :children
  puts "How many children do you have?"
  client_info[:children] = gets.chomp.to_i
  puts "Your updated information: #{client_info}"
elsif update.to_sym == :theme
  puts "What are your decor themes?"
  client_info[:theme] = gets.chomp
  puts "Your updated information: #{client_info}"
elsif update.to_sym == :experience
  puts "Do you have any experience? Type 'y' or 'n'."
  client_info[:experience] = gets.chomp == 'y' ? true : false
  puts "Your updated information: #{client_info}"
else
  puts "That key does not exist."
end
  


# Release 0
# iterating without parameter
5.times do
  puts "This is a test"
end
# iterating with parameter
3.times do |x|
  puts x + x
end
# one line block
4.times {|x| puts x + x}

# Release 1
array = [2, 5, 3, 7, 9]

full_name = {
  first: "adam",
  middle: "richard",
  last: "smith"
}

puts "array output"
array.each do |x|
  puts x + 2
end
p array

puts "map output"
new_array = array.map do |x|
  x * 2
end
p new_array

puts "map! output"
array.map! do |x|
  x + 10
end
p array

puts "hash.each output"
full_name.each do |x, y|
  puts "#{x} name is #{y}"
end
p full_name

puts "hash.map output"
new_full_name = full_name.map do |x, y|
  "#{x} name is #{y}"
end
p new_full_name
# fails due to hash data structure
#full_name.map! do |x, y|
#  "#{x} name is #{y}"
#end
#p full_name  

# Release 2
numbers = [0, 1, 3, 4, 5, 6, 7]

letters = {
  a: 1,
  b: 2,
  c: 3,
  d: 4
}
puts "reject less than 5 in array"
new_numbers = numbers.reject {|x| x < 5}
p new_numbers

puts "rejects value less than 5 in hash"
new_letters = letters.reject {|x, y| y < 3}
p new_letters

puts "selects less than 5 in array"
new_numbers = numbers.select {|x| x < 5}
p new_numbers

puts "select value less than 5 in hash"
new_letters = letters.select {|x, y| y < 3}
p new_letters




















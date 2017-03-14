# Release 0
2.times {|x| puts x + x}

3.times {|block_parameter| puts "This is a block parameter: #{block_parameter}"}

["a", "b", "c", "d"].each {|item| puts "Current item: #{item}"}

4.times { puts "This block works just fine even without a parameter."}

dinos = ["T-Rex", "Brontosaurus", "Pterodactyl"]
number_of_dinos = dinos.length
number_of_dinos.times {|i| puts dinos[i]}

def test_block
  puts "What is your names?"
  3.times {yield("Mike", "Saham")}
  puts "Nice to meet you both."
end
test_block {|name1, name2| puts "Our names are #{name1} and #{name2}."}

# Release 1
numbers = [2, 5, 3, 7, 9, 1, 4]

full_name = {
  first: "adam",
  middle: "richard",
  last: "smith"
}

puts "array.each output:"
numbers.each do |x| # .each doesn't modify original data and returns original data unless explicitly returned in new variable initialized outside of block
  puts x + 2
end
p numbers

puts "array.map output:"
new_numbers = numbers.map do |x| # .map doesn't modify original data but implicitly returns new data (more safe)
  x * 2
end
p new_numbers

puts "array.map! output:"
numbers.map! do |x| # .map! does modify and implicitly returns original data (more dangerous)
  x + 10
end
p numbers

puts "hash.each output:"
full_name.each do |x, y|
  puts "#{x} name is #{y}"
end
p full_name

puts "hash.map output:"
new_full_name = full_name.map do |x, y|
  "#{x} name is #{y}"
end
p new_full_name

=begin
full_name.map! do |x, y| # .map! fails due to hash data structure
  "#{x} name is #{y}"
end
=end

# Release 2
integers = [0, 1, 3, 4, 5, 1, 6]

letters = {
  a: 0,
  b: 2,
  c: 3,
  d: 4,
  e: 1,
  f: 5
}

puts "reject less than 5 in array:"
new_integers = integers.reject {|x| x < 5} # returns new data
p new_integers

puts "rejects value less than 5 in hash:"
new_letters = letters.reject {|x, y| y < 3}
p new_letters

puts "selects less than 5 in array:"
new_integers = integers.select {|x| x < 5} # returns new data
p new_integers

puts "select value less than 5 in hash:"
new_letters = letters.select {|x, y| y < 3}
p new_letters

puts "keeps if less than 6:"
integers.keep_if {|x| x < 6} # modifies data
p integers

puts "keep if value doesn't equal 3:"
letters.keep_if {|x, y| y != 3}
p letters

puts "drop while less than 2:"
new_integers = integers.drop_while {|x| x < 2} #returns new data
p new_integers

puts "drop while value is equal to 1:"
new_letters = letters.drop_while {|x, y| y < 4}
p new_letters





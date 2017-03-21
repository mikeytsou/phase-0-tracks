# Release 0
=begin
#Method to create a list:
input: string of items separated by spaces (example: "carrots apples cereal pizza")
steps: 
  -split string into array
  -loop each item in array to create hash keys and default value to 1
output: return hash with key and values

#Method to add an item to a list:
input: list, item name, and optional quantity
steps:
  -create hash key and quantity in existing list
output: return updated hash

#Method to remove an item from the list:
input: list and item name
steps:
  -if item is included in list, delete that item
output: return updated hash

#Method to update the quantity of an item:
input: list, item name, and quantity
steps:
  -if item is included in list, update items quantity
output: return updated hash

#Method to print a list and make it look pretty:
input: list
steps:
  -loop through list and print each key and value
output: return hash in list form
=end

# Release 1
# Method to create a list:
def create_list(list)
  array_list = list.split(", ")
  hash_list = {}

  array_list.each do |item|
    hash_list[item] = 1
  end
  hash_list
end

# Method to add an item to a list:
def add_item(list, item, quantity)
  list[item] = quantity
  list
end

# Method to remove an item from the list:
def remove_item(list, item)
  if list.include?(item)
    list.delete(item)
  end
  list
end

# Method to update the quantity of an item:
def update_quantity(list, item, quantity)
  if list.include?(item)
    list[item] = quantity
  end
  list
end

# Method to print a list and make it look pretty:
def print_list(list)
  puts "-" * 50
  puts "Grocery List:"
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
  puts "-" * 50
end

# DRIVER CODE
=begin
hash_list = create_list("carrots, apples, cereal, pizza")
p add_item(hash_list, "orange", 5)
p remove_item(hash_list, "carrots")
p update_quantity(hash_list, "apples", 3)
p print_list(hash_list)
=end

# Release 2
new_list = create_list("Nuts, Oranges, Cabbage")
add_item(new_list, "Lemonade", 2)
add_item(new_list, "Tomatoes", 3)
add_item(new_list, "Onions", 1)
add_item(new_list, "Ice Cream", 4)
remove_item(new_list, "Lemonade")
update_quantity(new_list, "Ice Cream", 1)
print_list(new_list)


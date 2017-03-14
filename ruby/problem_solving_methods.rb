# Release 0
# If the number argument matches a number in the array argument, return the index position of the array 

def search(array, number)
  result = nil
  array.each_with_index do |num, idx| # .each_with_index loops value and index
    if number == num
      result = idx
    end
  end
  result
end
integers = [4, 21, 79, 13, 90, 128]
p search(integers, 90)
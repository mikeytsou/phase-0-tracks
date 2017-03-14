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

# Release 1
# Add the last two indices of the array and add the result to the end of the array
# Repeat until num argument is reached and return array sequence

def fibonacci_v1(num)
  sequence = [0, 1]

  until sequence.length == num
    result = (sequence[-2] + sequence[-1])
    sequence << result
  end
  sequence
end
p fibonacci_v1(100)

def fibonacci_v2(num)
  sequence = []

  (0..num-2).each do |n|
    sequence << n if n <= 1
    sequence << (sequence[-2] + sequence[-1]) if n >= 1
  end
  sequence
end
p fibonacci_v2(100)


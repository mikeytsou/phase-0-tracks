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

# Release 2
# Bubble Sort
# Loop an array until all numbers are swapped in correct position
# If array[i] is greater than array[i+1], then swap those 2 positions and iterate to next number
# If all numbers are swapped, return array

def bubble_sort(array)
  array_length = array.length

  loop do
    swapped = false

    (array_length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break if not swapped # same as swapped == false
  end
  array
end
random = [2, 4, 1, 10, 6, 4, 8, 7, 5]
p bubble_sort(random)

# Insertion Sort
# Create and assign 'final' array a pivot value and delete that value from initial array
# Loop through initial array and compare element with every element in the 'final' array
# If element in initial array is less than any element in the 'final' array, insert in correct position in 'final array'
# Loop until method returns sorted array 

def insertion_sort(array)
  final = [array[0]]
  array.delete_at(0)

  for i in array
    final_idx = 0

    while final_idx < final.length
      if i <= final[final_idx]
        final.insert(final_idx, i)
        break
      elsif final_idx == final.length - 1
        final.insert(final_idx + 1, i)
        break
      end
      final_idx += 1
    end
  end
  final
end
random = [2, 4, 1, 10, 6, 4, 8, 7, 5]
p insertion_sort(random)


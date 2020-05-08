def merge_sort(array)
  if array.size > 1
    halfway = array.length / 2
    left_half = array.take(halfway)
    right_half = array.drop(halfway)
    array = merge(merge_sort(left_half), merge_sort(right_half))
  else
    array
  end
end

def merge(array1, array2)
  merged = []
  while array1.any? && array2.any? # while elements remaining
    if array1.first < array2.first
      merged << array1.shift
    else
      merged << array2.shift
    end
  end
  # add leftover elements of array1 & array2 to array. += used as remaining is integer.
  merged += array1
  merged += array2
end

unsorted_array = (1..10).to_a.shuffle
sorted_array = merge_sort(unsorted_array)
puts "Sorted Correctly: #{sorted_array == unsorted_array.sort} | #{unsorted_array} => #{sorted_array}"

# followed https://matt.coneybeare.me/coding-challenge-implementing-mergesort-in-ruby/
# included a test statement at the end
# >> Sorted Correctly: true | [10, 1, 3, 9, 5, 7, 6, 4, 8, 2] => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
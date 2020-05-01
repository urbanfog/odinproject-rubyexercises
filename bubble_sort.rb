# Takes array and returns sorted array

def bubble_sort(array)
  sort_ongoing = true # flag to indicate if sort is done
  
  while sort_ongoing 
    sort_ongoing = false
    array.each_with_index do |value, index|
      next if index == 0 
      next unless array[index - 1] > value # looks at previous value to see if smaller
      array[index] = array[index - 1] # sets current index to previous value
      array[index - 1] = value # sets previous index to current value
      sort_ongoing = true
    end
  end
  p array
end

bubble_sort([4,3,78,2,0,2])
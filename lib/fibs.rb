def fibs(num)
  array = [0, 1]
  num < 2 ? array[num] :
    (3..num).each  { |i| array << array[i - 3] + array[i - 2] } # Used 3 & 2 to account for 0 index
  array
end

def fibs_recursive(num, array = [0, 1])
  num < 2 ? array[0..num] : array << fibs_recursive(num - 1, array)[num - 1] + array[num - 2]
end

fibs(5) # => [0, 1, 1, 2, 3]
fibs(0) # => [0, 1]
fibs(1) # => [0, 1]
fibs(2) # => [0, 1]
fibs_recursive(10) # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]


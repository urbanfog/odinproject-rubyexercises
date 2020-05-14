
def reverse_append(ary, n)
  return ary if n < 0
  reverse_append(ary, n - 1)
  ary << n
  ary
end

reverse_append([],-1) # => []
reverse_append([],0) # => [0]
reverse_append([],1) # => [0, 1]
reverse_append([],2) # => [0, 1, 2]

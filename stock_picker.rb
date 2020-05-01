# Takes array of stock prices (one for each day)
# Should return a pair of days representing the best days to buy & sell
# Days start at 0
# Need to buy before you can sell
# Watch out for edge cases e.g. lowest is last day or highest is first day

def stock_picker(array)
  min_price_index = array.index(array.min)
  max_price_index = array.index(array.max)
  if max_price_index > min_price_index
    p [min_price_index, max_price_index]
  else
    max_price_index = array.index(array.max(2)[1]) # pull second highest
    min_price_index = array.index(array.min(2)[1])
    p [min_price_index, max_price_index]
  end

end

stock_picker([17,3,6,9,15,8,6,1,10])
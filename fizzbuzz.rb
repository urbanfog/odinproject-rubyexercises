# Starts at 1
# everything divisible by 3 = fizz
# everything divisible by 5 = buzz
# everything divisible by 15 = fizzbuzz
# output the first 100 occurences of fizz, buzz, or fizzbuzz

fizzbuzz = {}
counter = 1

until fizzbuzz.length == 100
  if counter % 15 == 0
  fizzbuzz[counter] = 'fizzbuzz'
  counter+= 1
  elsif counter % 3 == 0
    fizzbuzz[counter] = 'fizz'
    counter+= 1
  elsif counter % 5 == 0
    fizzbuzz[counter] = 'buzz'
    counter+= 1
  else
    counter+= 1
  end
end
puts fizzbuzz


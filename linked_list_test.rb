require_relative 'linked_lists.rb'

# Append test
animals = LinkedList.new
animals.append('dog')
animals.append('cat')
animals.to_s  == "( dog ) -> ( cat ) -> nil" # => true

# Prepend test
animals.prepend('fish')
animals.to_s  == "( fish ) -> ( dog ) -> ( cat ) -> nil" # => true

# Contains test
animals.contains?('fish') == true # => true
animals.contains?('dog') == true # => true
animals.contains?('cat') == true # => true
animals.contains?('horse') == false # => true

# find test
animals.find('fish') == 0 # => true
animals.find('cat')  == 2 # => true
animals.find('horse') == nil  # => true
animals.find('') == nil  # => true

# at test
animals.at(1).value == 'fish' # => true
animals.at(3).value == 'cat' # => true
animals.at(7) == nil  # => true
animals.at(nil) == nil  # => true

# pop test
animals.to_s # => "( fish ) -> ( dog ) -> ( cat ) -> nil"
animals.pop.value == 'cat' # => true
animals.pop.value == 'dog' # => true
animals.pop.value == 'fish' # => true
animals.to_s # => nil
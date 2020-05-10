class LinkedList
  attr_accessor :head, :tail, :size
  
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end
  
  # adds a new node containing value to end of list
  def append(value)

  end
  
  # adds a new node containing value to start of list
  def prepend(value)

  end

  # returns node at given index
  def at(index)
  end

  # removes last element from list
  def pop
  end

  # returns true if passed value is in list otherwise returns false
  def contains?(value)
  end

  # returns index of node containing value
  def find
  end

  # represent linked list as a string with format ( value ) -> ( value ) -> ( value ) -> nil
  def to_s

  end
end

class Node
  def value
    nil
  end

  def next_node
    nil
  end
end
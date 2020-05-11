# Test coverage included in linked_list_test.rb

class Node
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end
  
  # adds a new node containing value to end of list
  def append(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
    @size += 1
  end
  
  # adds a new node containing value to start of list
  def prepend(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
    @size += 1
  end

  # returns node at given index
  def at(index)
    begin
      current_node = @head
      count = 1
      until count == index do
        if current_node.nil?
          return nil
        else
          current_node = current_node.next_node # move through list
          count += 1
        end
      end
    rescue NoMethodError => e
      current_node = nil
    end
    current_node
  end

  # removes last element from list
  def pop
    if @size.zero?
      return nil
    elsif @size == 1
      popped = @tail
      @head = nil
      @size -= 1
      popped
    else
      popped = @tail
      @tail = at(@size - 1)
      @tail.next_node = nil
      @size -= 1
      popped
    end
  end

  # returns true if passed value is in list otherwise returns false
  def contains?(value)
    current_node = @head
    loop do
      if current_node.nil?
        return false
      elsif current_node.value == value
        return true
      else
      current_node = current_node.next_node # move through list
      end
    end
  end

  # returns index of node containing value
  def find(value)
    current_node = @head
    count = 0
    loop do
      if current_node.nil?
        return nil
      elsif current_node.value == value
        return count
      else
      current_node = current_node.next_node # move through list
      count += 1
      end
    end
  end

  # represent linked list as a string with format ( value ) -> ( value ) -> ( value ) -> nil
  def to_s
    return nil if @size == 0
    string = ''
    current_node = @head
    loop do
      string += "( #{current_node.value} ) -> "
      break if current_node.next_node.nil?
      current_node = current_node.next_node # move through list
    end
    string += 'nil'
    return string
  end
end

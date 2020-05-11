class Node
  attr_accessor :value, :left, :right
  
  def initialize(value, left, right)
    @value = value
    @left = left
    @right = right
  end
end

class Tree
  def initialize(array)
    @array = array
  end
end


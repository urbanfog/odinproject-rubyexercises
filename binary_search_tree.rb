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

  def root
    self.build_tree
  end

  # transforms array into balanced binary tree full of nodes
  # should be sorted with no dupes
  def build_tree
    return "level-1 root node"
  end
  
  # 
  def insert(value)
  end
  
  # cover for cases when it has children or not
  def delete(value)
    
  end

  # returns given node
  def find(value)

  end

  # traverse tree in breadth-first level order and yield each node to the block
  # can be implemented using iteration or recursion
  # want to use an array acting as a queue to keep track of child nodes that you have to traverse
  # make method return array of values if no block given
  def level_order(block)
  end

  # traverse tree in depth-first order and yield node to block.
  # make method return array of values if no block given
  def in_order(block)
  end

  def pre_order(block)
  end

  def post_order(block)
  end

  # returns number of levels beneath the node
  def depth(node)
  end

  # checks if tree is balanced (height of left & height of right not more than 1 level different)
  def balanced?

  end
  
  # rebalance an unbalanced tree
  # create a level order array of the tree before passing array back into build_tree
  def rebalance!
  end
end

array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]


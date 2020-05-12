class Node
  attr_accessor :value, :left, :right
  
  def initialize(value, left= nil, right= nil)
    @value = value
    @left = left
    @right = right
  end
end

class Tree
  attr_accessor :root
  def initialize(array)
    @array = array
    @root = nil
    build_tree
  end

  def build_tree
    # transform array into sorted set with no duplications
    sorted_array = @array.uniq.sort # => [1, 3, 4, 5, 7, 8, 9, 23, 67, 324, 6345]
    @root = Node.new(sorted_array[sorted_array.length / 2]) # => #<Node:0x00007febc68e3140 @value=8, @left=nil, @right=nil>
    sorted_array.delete(@root.value) # => 8
    
    sorted_array.each do |e|
      current_node = @root # pointer
      new_node = Node.new(e) # => #<Node:0x00007febc68e1e80 @value=1, @left=nil, @right=nil>, #<Node:0x00007febc68eff58 @value=3, @left=nil, @right=nil>, #<Node:0x00007febc68ed1e0 @value=4, @left=nil, @right=nil>, #<Node:0x00007febc6888ee8 @value=5, @left=nil, @right=nil>, #<Node:0x00007febc68681e8 @value=7, @left=nil, @right=nil>, #<Node:0x00007febc683b6e8 @value=9, @left=nil, @right=nil>, #<Node:0x00007febc68314b8 @value=23, @left=nil, @right=nil>, #<Node:0x00007febc681a3f8 @value=67, @left=nil, @right=nil>, #<Node:0x00007febc6812ea0 @value=324, @left=nil, @right=nil>, #<Node:0x00007febc6809238 @value=6345, @left=nil, @right=nil>
      
      while current_node != nil
        case new_node.value <=> current_node.value # => -1, -1, 1, -1, 1, 1, -1, 1, 1, 1, -1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
        when -1 # less than
          if current_node.left == nil
            current_node.left = new_node
            break
          else
            current_node = current_node.left # => #<Node:0x00007febc68e1e80 @value=1, @left=nil, @right=nil>, #<Node:0x00007febc68e1e80 @value=1, @left=nil, @right=#<Node:0x00007febc68eff58 @value=3, @left=nil, @right=nil>>, #<Node:0x00007febc68e1e80 @value=1, @left=nil, @right=#<Node:0x00007febc68eff58 @value=3, @left=nil, @right=#<Node:0x00007febc68ed1e0 @value=4, @left=nil, @right=nil>>>, #<Node:0x00007febc68e1e80 @value=1, @left=nil, @right=#<Node:0x00007febc68eff58 @value=3, @left=nil, @right=#<Node:0x00007febc68ed1e0 @value=4, @left=nil, @right=#<Node:0x00007febc6888ee8 @value=5, @left=nil, @right=nil>>>>
          end
        when 1 # greater than
          if current_node.right == nil
            current_node.right = new_node
            break
          else
            current_node = current_node.right # => #<Node:0x00007febc68eff58 @value=3, @left=nil, @right=nil>, #<Node:0x00007febc68eff58 @value=3, @left=nil, @right=#<Node:0x00007febc68ed1e0 @value=4, @left=nil, @right=nil>>, #<Node:0x00007febc68ed1e0 @value=4, @left=nil, @right=nil>, #<Node:0x00007febc68eff58 @value=3, @left=nil, @right=#<Node:0x00007febc68ed1e0 @value=4, @left=nil, @right=#<Node:0x00007febc6888ee8 @value=5, @left=nil, @right=nil>>>, #<Node:0x00007febc68ed1e0 @value=4, @left=nil, @right=#<Node:0x00007febc6888ee8 @value=5, @left=nil, @right=nil>>, #<Node:0x00007febc6888ee8 @value=5, @left=nil, @right=nil>, #<Node:0x00007febc683b6e8 @value=9, @left=nil, @right=nil>, #<Node:0x00007febc683b6e8 @value=9, @left=nil, @right=#<Node:0x00007febc68314b8 @value=23, @left=nil, @right=nil>>, #<Node:0x00007febc68314b8 @value=23, @left=nil, @right=nil>, #<Node:0x00007febc683b6e8 @value=9, @left=nil, @right=#<Node:0x00007febc68314b8 @value=23, @left=nil, @right=#<Node:0x00007febc68...
          end
        when 0 # equal
          return "Error, duplicate number detected."
        when nil # when encounters nil, shouldn't happen??
          current_node = nil 
        end
      end
    end

    @root # => #<Node:0x00007febc68e3140 @value=8, @left=#<Node:0x00007febc68e1e80 @value=1, @left=nil, @right=#<Node:0x00007febc68eff58 @value=3, @left=nil, @right=#<Node:0x00007febc68ed1e0 @value=4, @left=nil, @right=#<Node:0x00007febc6888ee8 @value=5, @left=nil, @right=#<Node:0x00007febc68681e8 @value=7, @left=nil, @right=nil>>>>>, @right=#<Node:0x00007febc683b6e8 @value=9, @left=nil, @right=#<Node:0x00007febc68314b8 @value=23, @left=nil, @right=#<Node:0x00007febc681a3f8 @value=67, @left=nil, @right=#<Node:0x00007febc6812ea0 @value=324, @left=nil, @right=#<Node:0x00007febc6809238 @value=6345, @left=nil, @right=nil>>>>>>
  end
  
  def insert(value)
    # should always be added as a leaf
  end
  
  def delete(value)
    # delete leaf, no change to anything else
    # delete node with 1 child, replace with child
    # delete node with 2 children, replace with next largest (e.g. left-most child of right sub-tree)
    # if deleted node has children, follow above rules
  end

  # returns given node
  def find(value)
    # left = less-than
    # right = greater-than
  end

  # traverse tree in breadth-first level order and yield each node to the block
  # can be implemented using iteration or recursion
  # want to use an array acting as a queue to keep track of child nodes that you have to traverse
  # make method return array of values if no block given
  def level_order(block)
    # store items in queue (FIFO)
    # if nil return
    # queue = Queue.new()
    # root node added to queue
    # push node locations into queue
    # while queue not empty add children to queue
    # if left not nil, add
    # if right not nil, add
    # pop first element as it is visited
  end

  # traverse tree in depth-first order and yield node to block.
  # make method return array of values if no block given
  # visit left, root, then right = Inorder
  def in_order(block)
    # if root nil, return
    # visit left
    # visit root
    # visit right 
  end

  # visit root, left, then right = Preorder
  def pre_order(block)
    # visit root
    # visit left
    # visit right
    # store in stack (LIFO)
  end

  # visit left, right, then root = Postorder
  def post_order(block)
    # visit left
    #visit right
    # visit root 
  end

  # returns number of levels beneath the node
  def depth(node)
    # using x-root will only work if balanced.
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
tree = Tree.new(array) # => #<Tree:0x00007febc80a8168 @array=[1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324], @root=#<Node:0x00007febc68e3140 @value=8, @left=#<Node:0x00007febc68e1e80 @value=1, @left=nil, @right=#<Node:0x00007febc68eff58 @value=3, @left=nil, @right=#<Node:0x00007febc68ed1e0 @value=4, @left=nil, @right=#<Node:0x00007febc6888ee8 @value=5, @left=nil, @right=#<Node:0x00007febc68681e8 @value=7, @left=nil, @right=nil>>>>>, @right=#<Node:0x00007febc683b6e8 @value=9, @left=nil, @right=#<Node:0x00007febc68314b8 @value=23, @left=nil, @right=#<Node:0x00007febc681a3f8 @value=67, @left=nil, @right=#<Node:0x00007febc6812ea0 @value=324, @left=nil, @right=#<Node:0x00007febc6809238 @value=6345, @left=nil, @right=nil>>>>>>>

# Tree building tests
tree.root.left.value == 1 # => true
tree.root.left.right.value == 3 # => true
tree.root.left.right.right.value == 4 # => true
tree.root.left.right.right.right.value == 5 # => true
tree.root.left.right.right.right.right.value == 7 # => true
tree.root.left.right.right.right.right.right == nil # => true

tree.root.right.value == 9 # => true
tree.root.right.right.value == 23 # => true
tree.root.right.right.right.value == 67 # => true
tree.root.right.right.right.right.value == 324 # => true
tree.root.right.right.right.right.right.value == 6345 # => true
tree.root.right.right.right.right.right.right == nil # => true

class Node
  attr_accessor :left, :right
  attr_reader :val 
  def initialize(val)
    @val = val
  end
end

root = Node.new("I")

# first level
root.left = Node.new("O")
root.right = Node.new("H")

# second level
root.left.left = Node.new("L")
root.left.right = Node.new("R")
root.right.left = Node.new("T")
root.right.right = Node.new("M")

# third level
root.left.left.left = Node.new("A")
root.left.left.right = Node.new("G")



def pre_order(node)
  return [] if node.nil?
  results = []
  results << node.val
  results.concat pre_order(node.left)
  results.concat pre_order(node.right)
  results
end


def post_order(node)
  return [] if node.nil?
  results = []
  
  results.concat post_order(node.left)
  results.concat post_order(node.right)
  results << node.val
  results
end

p pre_order(root)

p post_order(root)

class Node
  attr_reader :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  def print_values
    puts "Node: #{value} (Left: #{left ? left.value : nil}, Right: #{right ? right.value : nil})"
  end
end

class Tree
  def initialize(number_of_nodes)
    @nodes = generate_nodes(number_of_nodes)
  end

  def self.print_tree(node, positions, level)
    puts "----- Recuring -------"
    puts "On Level: #{level}"
    node.print_values
    add_value_to_positions(node.value, positions, level)
    level += 1

    if node.left
      print_tree(node.left, positions, level)
    end

    if node.right
      print_tree(node.right, positions, level)
    end

    level -= 1

    if level == 1
      print_positions(positions)
    end
    puts "---- Ending Recursion on Level: #{level} -----\n\n"
  end

  def self.add_value_to_positions(value, positions, level)
    puts "Adding #{value} to level #{level}"
    if positions[level]
      positions[level] = positions[level] << value
    else
      positions[level] = [value]
    end
  end

  def self.print_positions(positions)
    puts "Positions: #{positions}"
    positions.each do |key, values|
      puts values.join(" ")
    end
  end

  def generate_nodes(number_of_nodes)
    node = Node.new()

  end

end


l4_5  = Node.new(5)
l4_11 = Node.new(11)
l4_4  = Node.new(4)
l3_2  = Node.new(2)
l3_6  = Node.new(6, l4_5, l4_11)
l3_9  = Node.new(9, l4_4)
l2_7  = Node.new(7, l3_2, l3_6)
l2_5  = Node.new(5, nil, l3_9)
root  = Node.new(2, l2_7, l2_5)


# node_array =[l4_5, l4_11, l4_4, l3_9, l3_6, l3_2, l2_5, l2_7, root]
# node_array.each {|node| print_node_values(node)}






Tree.print_tree(root, {}, 1)

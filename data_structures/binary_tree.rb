class Node
  attr_accessor :value, :left, :right, :in_tree

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
    @in_tree = false
  end

  def print_values
    "[Node: #{value} (Left: #{left ? left.value : nil}, Right: #{right ? right.value : nil})]"
  end
end

class Tree
  def initialize(number_of_nodes)
    @nodes = generate_tree(number_of_nodes)
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

  def generate_tree(number_of_nodes)
    nodes = generate_nodes(number_of_nodes)




    nodes.each_with_index do |child, index|
      puts "\n--------------------------------"
      puts "Trying to place child node at index #{index}"

      if child.in_tree
        puts "Child node at index #{index} is already placed: #{child.print_values}"
      else
        puts "Child is not placed yet: #{child.print_values} "

        nodes.each do |parent|
          puts "Checking parent for openings: #{parent.print_values}"

          puts "Checking left side"
          if parent.left
            puts "Left side is full"
          else
            puts "Left side is open"
            puts "Placing #{child.print_values} in left branch of #{parent.print_values}"
            parent.left = child
            break
          end

          puts "Checking right side"
          if  parent.right
            puts "Right side is full"
          else
            puts "right side is open"
            puts "Placing #{child.print_values} in right branch of #{parent.print_values}"
            parent.right = child
            break
          end
        end
      end
    end
  end

  def generate_nodes(number_of_nodes)
    nodes = []
    number_of_nodes.times{nodes << Node.new(rand(0..11))}
    nodes[0].in_tree = true #sets root node

    print_node_values(nodes) #just so we can see the order
    return nodes
  end

  def print_node_values(nodes)
    node_values = []
    nodes.each{|node| node_values << node.value}
    puts "Inital Node Values: #{node_values.join(", ")}"
  end

end


# l4_5  = Node.new(5)
# l4_11 = Node.new(11)
# l4_4  = Node.new(4)
# l3_2  = Node.new(2)
# l3_6  = Node.new(6, l4_5, l4_11)
# l3_9  = Node.new(9, l4_4)
# l2_7  = Node.new(7, l3_2, l3_6)
# l2_5  = Node.new(5, nil, l3_9)
# root  = Node.new(2, l2_7, l2_5)


# node_array =[l4_5, l4_11, l4_4, l3_9, l3_6, l3_2, l2_5, l2_7, root]
# node_array.each {|node| print_node_values(node)}






# Tree.print_tree(root, {}, 1)
tree = Tree.new(9)

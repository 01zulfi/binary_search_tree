# frozen_string_literal: true

require_relative './binary_search_tree'

tree = Tree.new([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])
puts "Root: #{tree.root.data}"
puts ''
tree.pretty_print

puts '-' * 20
puts 'Inerting 0'
tree.insert(0)
puts ''
tree.pretty_print

puts '-' * 20
puts 'Inerting 100'
tree.insert(100)
puts ''
tree.pretty_print

puts '-' * 20
puts 'Inserting 18'
tree.insert(18)
puts ''
tree.pretty_print

puts '-' * 20
puts 'Inserting 24'
tree.insert(24)
puts ''
tree.pretty_print

puts '-' * 20
puts 'Inserting 10000'
tree.insert(10_000)
puts ''
tree.pretty_print

puts '-' * 20
puts 'Find 0'
p tree.find(0)

puts '-' * 20
puts 'Find 23'
p tree.find(23)

puts '-' * 20
puts 'Delete 0'
tree.delete(0)
tree.pretty_print

puts '-' * 20
puts 'Delete 8'
tree.delete(8)
tree.pretty_print

puts '-' * 20
puts 'Level order traversal'
p tree.level_order

puts '-' * 20
puts 'Level order traversal with yield'
tree.level_order { |value| p "yielded #{value}" }

puts '-' * 20
puts 'Preorder traversal'
p tree.preorder

puts '-' * 20
puts 'Inorder traversal'
p tree.inorder

puts '-' * 20
puts 'Postorder traversal'
p tree.postorder

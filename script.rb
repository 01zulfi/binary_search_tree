# frozen_string_literal: true

require_relative './lib/binary_search_tree'

array = Array.new(15) { rand(1..100) }

tree = Tree.new(array)

tree.pretty_print

puts 'Balanced?: '
p tree.balanced?

puts '-' * 20
puts 'Level order traversal'
p tree.level_order

puts '-' * 20
puts 'Preorder traversal'
p tree.preorder

puts '-' * 20
puts 'Inorder traversal'
p tree.inorder

puts '-' * 20
puts 'Postorder traversal'
p tree.postorder

tree.insert(101)
tree.insert(111)
tree.insert(200)
tree.insert(165)

tree.pretty_print

puts 'Balanced?: '
p tree.balanced?

puts 'Rebalanced:'
tree.rebalance
tree.pretty_print

puts '-' * 20
puts 'Level order traversal'
p tree.level_order

puts '-' * 20
puts 'Preorder traversal'
p tree.preorder

puts '-' * 20
puts 'Inorder traversal'
p tree.inorder

puts '-' * 20
puts 'Postorder traversal'
p tree.postorder

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

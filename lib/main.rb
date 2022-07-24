# frozen_string_literal: true

require_relative './binary_search_tree'

tree = Tree.new([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])
p "Root: #{tree.root.data}"
puts ''
tree.pretty_print

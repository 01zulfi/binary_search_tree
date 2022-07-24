# frozen_string_literal: true

require_relative './node'

# tree class
class Tree
  attr_reader :root

  def initialize(array)
    @root = build_tree(process(array))
  end

  def pretty_print(node = @root, prefix = '', is_left: true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", is_left: false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", is_left: true) if node.left
  end

  def insert(value, current_node = @root)
    if current_node.less_than_value?(value) && right_empty?(current_node)
      current_node.right = Node.new(value)
      return
    end

    if current_node.greater_than_value?(value) && left_empty?(current_node)
      current_node.left = Node.new(value)
      return
    end

    current_node.less_than_value?(value) ? insert(value, current_node.right) : insert(value, current_node.left)
  end

  private

  def build_tree(array, start_index = 0, end_index = array.length - 1)
    return nil if start_index > end_index

    mid = find_mid(start_index, end_index)
    root_node = Node.new(array[mid])

    root_node.left = build_tree(array, start_index, mid - 1)
    root_node.right = build_tree(array, mid + 1, end_index)

    root_node
  end

  def process(array)
    array.uniq.sort
  end

  def find_mid(start_num, end_num)
    (start_num + end_num) / 2
  end

  def left_empty?(node)
    node.left.nil?
  end

  def right_empty?(node)
    node.right.nil?
  end
end
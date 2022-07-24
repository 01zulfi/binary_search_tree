# frozen_string_literal: true

# module for helper methods to compare nodes & values
module Comparable
  def less_than_node?(node)
    @data < node.data
  end

  def less_than_value?(value)
    @data < value
  end

  def greater_than_value?(value)
    !less_than_value?(value)
  end
end

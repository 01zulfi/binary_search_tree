# frozen_string_literal: true

# class for tree nodes
class Node
  attr_reader :data 
  attr_accessor :left, :right

  def initialize(data, left = nil, right = nil)
    @data = data
    @left = left
    @right = right
  end
end

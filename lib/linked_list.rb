require './lib/node.rb'

class LinkedList < Node

  attr_accessor :head, :data, :node, :next_node

  def initialize
    @head = node
  end

  def next_node
    node = nil
  end

  def append(data)
    if head.nil?
      @head = Node.new(data)
    else
      next_node.node = Node.new(data)
    end
  end

  def count
    if @head.nil? == false
      1
    else
      0
    end
  end

  def to_string
    @head.data.to_s
  end


end

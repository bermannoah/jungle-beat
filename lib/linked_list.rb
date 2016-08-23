require './lib/node.rb'

class LinkedList < Node

  attr_accessor :head, :data, :node, :next_node

  def initialize
    @head = node
  end

  def append(data)

    head.nil? ? @head = Node.new(data) : @next_node = Node.new(data)

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

require "./node"
require "pry"

class LinkedList

  attr_accessor :append, :count, :to_string, :list, :head, :data, :next_node

  def initialize(data)
    @head = Node.new(data)
  end

  def append(data)
    @head.next_node = Node.new(data)
  end

  def count
    if @head.next_node
       2
    elsif @head
       1
    else
       0
    end
  end

  def to_string
    puts "'#{@head.data} #{@head.next_node.data}'"
  end

binding.pry
end

require "./node.rb"
require "pry"

class LinkedList

  attr_accessor :append, :count, :to_string, :list, :head, :data, :next_node

  def initialize(data)
    @head = Node.new
  end

  def append(data)
    if @head.next_node
      @head.next_node = Node.new(data)
    else
      @head.data = data
    end
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
    if @head.next_node
      puts "'#{@head.data} #{@head.next_node.data}'"
    else
      puts "'#{@head.data}'"
    end
  end

binding.pry
end

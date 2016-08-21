require "./node"
require "./head"

class LinkedList

  attr_accessor :head, :append, :count, :to_string, :data, :next_node, :node

  def initialize
    @head = Head.new(data)
  end

  def append(data)

      if @head.data == nil
        @head.data = data
      elsif @head.next_node == nil
        @head.next_node = Node.new(data)
      else
        @next_node = Node.new(data)
      end

      # if @next_node != nil
      #   @next_node.next_node = Node.new(data)
      # elsif @head.data != nil && @head.next_node == nil
      #   @head.next_node = Node.new(data)
      # else
      #   @head.data = data
      # end

  end

  def prepend(data)

    


  end

  def insert(location, data)

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
      "#{@head.data.to_s} #{@head.next_node.data.to_s}"
    else
      "#{@head.data.to_s}"
  end
  end
end

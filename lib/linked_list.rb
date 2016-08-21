require "./node"


class LinkedList

  attr_accessor :head, :append, :count, :to_string, :data, :next_node

  def initialize
    @head = Node.new(data)
  end

  def append(data)

    if @head.data
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
    if @head
      "#{@head.data.to_s} #{@head.next_node.data.to_s}"
    else
      "#{@head.data.to_s}"
  end
  end
end

require "./head"
require "./node"
# require "./next_node"

class LinkedList
  attr_accessor :next_node, :data

  def initialize
    @head = Node.new
  end

  def append(data)

      if @head.data.nil?
        @head.data = data

      else
       @head.next_node = Node.new

      end
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

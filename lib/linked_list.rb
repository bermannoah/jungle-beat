require "./node"
require "./head"


class LinkedList

  attr_accessor :head, :append, :count, :to_string, :data, :next_node

  def initialize
    @head = Head.new(data)

  end

  def append(data)

      # check to see if there is anything in @head.
      # if there isn't, put data there.

      if @head.data.nil? == true
        @head.data = data
      end



      # if there IS data there, create a new node

      if @head.data.nil? == false
        @head.next_node = Node.new(data)
      end

      # if @next_node.data.nil? == false
      # if @head.next_node.data.nil? == false
      #   @next_node.data = data
      # end

      # if adding more data, new node adds following data to new node


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

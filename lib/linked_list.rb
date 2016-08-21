require "./node"

class LinkedList

  attr_accessor :head, :append, :count, :to_string, :data

  def initialize
    @head = Node.new(data)
  end

  def append(data)
    @head.data = data
  end

  def count
    if @head
      1
    else
      0
    end
  end

  def to_string
    "#{@head.data.to_s}"
  end

end

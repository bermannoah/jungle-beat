class Node

  attr_reader :data, :next_node, :head

  def initialize(data)
    @data = data
    @next_node = nil
  end

  def node
    @data = data
    @next_node = nil
  end

  def next_node
  end

  def append
    if head.nil?
      @head = @data
    else
      @next_node = node
    end

  end
end

class Node

  attr_accessor :data, :next_node, :head

  def initialize(data)
    @data = data
    @next_node = nil
  end


  def append
    if head.nil?
      @head = @data
    else
      @next_node
    end

  end
end

class Head

  attr_accessor :next_node, :data

  def initialize
    @next_node = Node.new(data)
    @data = nil
  end
end

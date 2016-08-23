require "./head"
require "./node"

class NextNode

  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
    @next_node = Node.new(data)
  end
end

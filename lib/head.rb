require "./node"
require "./linked_list"

class Head

  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
    @next_node = next_node
  end
end

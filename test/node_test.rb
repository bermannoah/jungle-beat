gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'

class NodeTest < Minitest::Test

  attr_accessor :data

  def test_a_node_can_be_created
    node = Node.new("plop")
    assert_equal Node, node.class
    assert_equal "plop", node.data
  end

  def test_node_has_next_node
    data = "plop"
    node = Node.new(data)
    assert_nil node.next_node
  end

  def test_node_can_append
    list = Node.new(data)
    assert_nil list.append
  end

end

gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  attr_reader :data, :to_string

  def test_linked_list_has_head_node
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_linked_list_has_next_node
    list = LinkedList.new
    assert_equal nil, list.next_node
  end

  def test_linked_list_can_count
    list = LinkedList.new
    refute_nil list.count
  end

  def test_linked_list_can_convert_to_string
    list = LinkedList.new
    list.append("deep")
    assert String, list.to_string
  end

  def test_the_head_node_has_an_empty_next_node
    list = LinkedList.new
    assert_equal nil, list.next_node
  end

  def test_the_head_node_has_a_real_next_node
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
    list.append("deep")
    assert_equal "deep", list.head.next_node.data
  end

end

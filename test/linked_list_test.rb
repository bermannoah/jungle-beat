gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  attr_accessor :data

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
    list=LinkedList.new
    assert_instance_of String, list.to_string
  end

end

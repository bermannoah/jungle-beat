gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'simplecov'
SimpleCov.start
require './lib/node'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_linked_list_has_head_node
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_linked_list_has_current_node
    list = LinkedList.new
    assert_equal nil, list.current_node
  end

  def test_linked_list_can_count
    list = LinkedList.new
    assert_equal 0, list.count
    list.append("hello")
    assert_equal 1, list.count
    list.append("world")
    list.append("!")
    assert_equal 3, list.count
  end

  def test_linked_list_can_convert_to_string
    list = LinkedList.new
    list.append("deep")
    assert String, list.to_string
  end

  def test_to_string_can_handle_a_bunch_of_numbers
    list = LinkedList.new
    list.append("1231232313")
    assert String, list.to_string
  end

  def test_the_head_node_has_an_empty_current_node
    list = LinkedList.new
    assert_equal nil, list.current_node
  end

  def test_the_head_node_has_a_real_current_node
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
    list.append("deep")
    assert_equal "deep", list.head.next_node.data
  end

  def test_able_to_prepend_to_list
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal 2, list.count
    list.prepend("doowap")
    assert_equal 3, list.count
  end

  def test_prepend_really_puts_things_in_the_right_place
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.prepend("doooowap")
    assert_equal "doooowap", list.head.data
  end

  def test_if_head_is_nil_prepend_acts_like_append
    list = LinkedList.new
    list.prepend("dooooo")
    assert_equal 1, list.count
  end

  def test_able_to_insert_node_at_a_position
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("doowap")
    list.insert(1, "woo")
    list.insert(2, "woo")
    list.insert(4, "yikes")
    assert_equal 6, list.count
  end

  def test_able_to_insert_a_node_if_there_is_only_one_node
    list = LinkedList.new
    list.append("hello")
    list.insert(1, "world")
    assert_equal "hello world", list.to_string
  end

  def test_insert_returns_an_error_if_you_enter_data_outside_of_list
    list = LinkedList.new
    list.append("hello")
    list.append("world")
    assert_equal "You can't do that", list.insert(100, "lol whoops")
  end

  def test_insert_will_work_with_only_two_elements
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.insert(1, "whoa")
    assert_equal "whoa", list.find(1, 1)
  end

  def test_find_can_locate_elements
    list = LinkedList.new
    list.append("shu")
    list.append("shi")
    list.append("woo")
    assert_equal "shi woo", list.find(1, 2)
  end

  def test_find_can_find_in_list_with_one_element
    list = LinkedList.new
    list.append("hello")
    assert_equal "hello", list.find(0, 1)
  end

  def test_find_does_not_freak_out_when_nil_comes_back
    list = LinkedList.new
    assert_equal "", list.find(0, 1)
  end

  def test_find_only_returns_existing_elements_if_more_elements_requested_than_exist
    list = LinkedList.new
    list.append("woop")
    list.append("doop")
    assert_equal "woop doop", list.find(0, 4000)
  end

  def test_includes_can_find_out_if_something_exists
    list = LinkedList.new
    list.append("shi")
    list.append("woo")
    list.append("shu")
    assert_equal true, list.includes?("shi")
    assert_equal false, list.includes?("hello")
  end

  def test_includes_can_find_one_element
    list = LinkedList.new
    list.append("alone")
    assert list.includes?("alone")
  end

  def test_includes_can_handle_a_list_with_one_element_but_not_the_right_one
    list = LinkedList.new
    list.append("whoops")
    refute list.includes?("saturday")
  end

  def test_pop_can_remove_the_last_node
    list = LinkedList.new
    list.append("shi")
    list.append("woo")
    list.append("shu")
    assert_equal 3, list.count
    assert_equal "shu", list.pop
    assert_equal 2, list.count
  end

  def test_pop_can_handle_a_list_with_one_element
    list = LinkedList.new
    list.append("solo")
    assert_equal "solo", list.pop
    assert_nil list.head
  end

  def test_pop_can_handle_a_list_with_two_elements
    list = LinkedList.new
    list.append("one")
    list.append("two")
    assert_equal "two", list.pop
    assert_equal 1, list.count
  end
end

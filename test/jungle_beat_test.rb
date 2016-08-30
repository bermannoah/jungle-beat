gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'simplecov'
SimpleCov.start
require './lib/jungle_beat'
require 'pry'

class JungleBeatTest < Minitest::Test

  def test_jb_has_head_node
    jb = JungleBeat.new
    assert_nil jb.list.head
  end

  def test_jb_can_append_multiple_words_to_list
    jb = JungleBeat.new
    assert_equal "one two three four", jb.append("one two three four")
    assert_equal 4, jb.count
    jb.play
  end

  def test_jb_can_append_one_word_to_test
    jb = JungleBeat.new
    assert_equal "thing", jb.append("thing")
    assert_equal 1, jb.count
  end
end

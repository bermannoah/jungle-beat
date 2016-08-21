require "./lib/node"
require "./lib/linked_list"
require "pry"


list = LinkedList.new

list.append("doop")
list.next_node

binding.pry

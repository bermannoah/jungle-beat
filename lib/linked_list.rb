require './lib/node.rb'

class LinkedList < Node
  attr_reader :current_node, :position, :head, :node

  def initialize
    @head = node
  end

  def append(data)

    if head.nil?
      @head = Node.new(data)
    else
      make_current_node(data)
    end

  end

  def count

    if @head == nil
      0
    else
      current_node = @head.next_node
      count = 1
      until current_node.nil?
          count += 1
          current_node = current_node.next_node
        end
    end
    count   # sends number of elements to terminal
  end

  def to_string
    string = ""
    string << @head.data
    current_node = @head.next_node
    until current_node.nil?
      string << " " + current_node.data
      current_node = current_node.next_node
    end
    string
  end

  def prepend_node(data)
      if @head.nil?                     # if this is called on empty head, proceeds like append
        @head = Node.new(data)
      else
        local_head = @head              # store head as a local variable
        @head = Node.new(data)          # reassign head as a new node
        @head.next_node = local_head    # assign the original head node to head.next_node
      end
  end

  def insert(position, data)

      current_node = @head.next_node
      count = 1

        until count == position
          current_node = current_node.next_node     # can't insert at end if next == nil!
          count += 1
        end

        node_to_insert = Node.new(data)

        node_to_insert.next_node = current_node.next_node

        current_node.next_node = node_to_insert

  end

  def find(position, number_of_elements)
    count = 0
    current_node = @head
    until count == position
      count += 1
      current_node = current_node.next_node
    end
    generate_collection(number_of_elements, current_node)
  end

  def includes?(data)
    current_node = @head

    until current_node == nil
      return true if current_node.data == data
      current_node = current_node.next_node
    end
    false
  end

  def pop
    if @head == nil
      return
    elsif @head.next_node.nil?
      element_to_return = @head.data
      @head = nil
    else
      current_node = @head
      until current_node.next_node.next_node.nil?
        current_node = current_node.next_node
      end
      element_to_return = current_node.next_node.data
      current_node.next_node = nil
    end
    element_to_return
  end

    private

    def make_current_node(data)
      current_node = @head
      until current_node.next_node.nil?          # looks to see if there's a nil node. if there is...
        current_node = current_node.next_node    # looks for next node, sets that as local variable and then keeps going
      end
      current_node.next_node = Node.new(data)    # ... puts data there.

    end

    def generate_collection(number_of_elements, current_node)
      found = ""
      count = 0
      until count == number_of_elements

        break if current_node.nil?
        count += 1
        found << current_node.data + " "
        current_node = current_node.next_node
      end
      found.to_s.strip
    end


end

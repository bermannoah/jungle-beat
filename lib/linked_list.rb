class LinkedList

  attr_accessor :append, :count, :to_string, :list, :head

  def head
    @head
  end

  def append(data)
    list.to_s + data.to_s
  end

  def count
    @list.to_s.count
  end

  def to_string
    @list.to_s
  end

end

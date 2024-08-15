# mold for element objects
class Element
  attr_reader :datum, :next

  def initialize(val, next_val = nil)
    @datum = val
    @next = next_val
  end

  def tail?
    !datum.nil?
  end
end

# mold for Simple linked list objects
class SimpleLinkedList
  attr_accessor :list

  def initialize(val = [])
    @list = val.to_a
  end

  def to_a
    arr = []
    list.each do |elem|
      arr << elem.datum
    end
    arr
  end

  def size
    list.count
  end

  def empty?
    list.empty?
  end

  def push(val)
    list.unshift(Element.new(val, list[0]))
  end

  def peek
    return nil if list.empty?

    list.first.datum
  end

  def head
    list.first
  end

  def pop
    list.shift.datum
  end

  def reverse
    self.class.from_a(to_a.reverse)
  end

  def self.from_a(val)
    new_list = new
    return new_list if val.nil? || val.count.zero?

    val.reverse.each do |sub_val|
      new_list.push(sub_val)
    end
    new_list
  end
end

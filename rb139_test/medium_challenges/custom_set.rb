require 'pry'

class CustomSet
  attr_accessor :set

  def initialize(arr = nil)
    @set = arr
  end

  def empty?
    set.nil?
  end

  def contains?(val)
    return false if empty?

    set.include?(val)
  end

  def subset?(other_set)
    return true if empty?
    return false if other_set.empty?

    set.each do |val|
      return false unless other_set.set.include?(val)
    end
    true
  end

  def disjoint?(other_set)
    return true if empty? || other_set.empty?

    set.each do |val|
      return false if other_set.set.include?(val)
    end
    true
  end

  def eql?(other)
    return false unless eql_comparison(other)
    return true if (empty? && other.empty?) || (set.uniq.sort == other.set.uniq.sort)

    false
  end

  def eql_comparison(other)
    return true unless (empty? && !other.empty?) || (!empty? && other.empty?)
  end

  def add(val)
    if empty?
      self.set = [val]
    elsif set.include?(val)
      self
    else
      set << val
      self
    end
  end

  def intersection(other_set)
    return self.class.new if eql?(other_set) || disjoint?(other_set)

    arr = []
    set.each do |val|
      arr << val if other_set.set.include?(val)
    end
    self.class.new(arr)
  end

  def ==(other)
    eql?(other)
  end

  def difference(other_set)
    return self if eql?(other_set) || disjoint?(other_set)

    arr = []
    set.each do |val|
      arr << val unless other_set.set.include?(val)
    end
    self.class.new(arr)
  end

  def union(other_set)
    return self if eql?(other_set)

    if empty? && !other_set.empty?
      other_set
    elsif !empty? && other_set.empty?
      self
    else
      arr = (set + other_set.set).uniq
      self.class.new(arr)
    end
  end
end

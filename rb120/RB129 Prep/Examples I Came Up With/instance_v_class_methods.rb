class Plant
  @@count = 0

  def initialize
    @@count += 1
  end

  def self.count
    puts @@count
  end

  def increase_count
    @@count += 1
  end

end
  
class Tree < Plant

end

puts mint = Plant.new
puts Plant.count
puts mint.increase_count
puts Plant.count

puts oak = Tree.new
puts Tree.count
puts oak.increase_count
puts Plant.count


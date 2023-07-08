module Walkable
  def walk 
    puts "#{name} #{gait} forward"
  end
end
 
class Person
  include Walkable
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  include Walkable
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

class Noble < Person
  include Walkable
  
  attr_reader :name, :title

  def initialize(name, title)
    @name = name
    @title = title
  end

  def gait
    "struts"
  end

end



# modify the code so the following works. You are only allowed to write one new method to do this.

byron = Noble.new("Byron", "Lord")
byron.walk
# => "Lord Byron struts forward"
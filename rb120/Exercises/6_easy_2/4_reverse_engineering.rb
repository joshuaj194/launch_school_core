# # Write a class that will display:

# ABC
# xyz

class Transform

  def initialize(word)
    @input = word
  end

  def uppercase
    @input.upcase
  end

  def self.lowercase(str)
    str.downcase
  end

end

# when the following code is run:

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')


class Person

  attr_accessor :first_name, :last_name

  def initialize(n)
    @first_name = n
    @last_name = ''
  end

  def name=(full_name)
    @first_name = full_name.split(" ")[0]
    @last_name = full_name.split(" ")[1] || " "
  end

  def name
    @first_name + " " + @last_name
  end
  
end

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
bob.last_name = 'Smith'
puts bob.name                  # => 'Robert Smith'

bob.name = "John Adams"
puts bob.first_name            # => 'John'
puts bob.last_name             # => 'Adams'
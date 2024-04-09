# name format:
# - two letters
# - ending with three numbers

# need to track all existing names because there cannot be an overlap
# what happens when the name is reset? Is it added back into the rotation?
# Can the reset result in the same name again? (must be a new name)

# name generator
# - called when the object is initialized
# - generates name with 5 characters
# - checks name against existing name bank

# name reader

class Robot
  attr_reader :name

  @@names = []

  def initialize
    @name = set_name
  end

  def set_name
    option = ""
    loop do 
      option = generate_random_name
      break if name_available(option)
    end
    add_to_bank(option)
    option
  end

  def generate_random_name
    letters = ("A".."Z").to_a
    numbers = (0..9).to_a
    name = letters.sample + letters.sample + numbers.sample.to_s + numbers.sample.to_s + numbers.sample.to_s
  end

  def name_available(name)
    return true unless @@names.include?(name)
  end

  def add_to_bank(option)
    @@names << option
  end

  def reset
    @@names.delete(self.name)
    @name = set_name
  end
end
class Human 
  attr_reader :name

  def initialize(name="Dylan")
    @name = name
  end

  def self.hair_colour(colour = "blonde")
    puts "My name is #{@name} and I have #{colour} hair."
  end
end

puts Human.new("Jo").hair_colour("blonde")  
# Should output "Hi, my name is Jo and I have blonde hair."

puts Human.hair_colour("")              
# Should "Hi, my name is Dylan and I have blonde hair."
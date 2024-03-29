class Magician
  attr_reader :stage_name, :real_name, :signature_trick, :age
  def initialize(stage_name, real_name, age, signature_trick)
    @stage_name = stage_name
    @real_name = real_name
    @age = age
    @signature_trick = signature_trick
  end

  def older?(other_magician)
    age > other_magician.age
  end

  def reveal_name
    "My real name is #{real_name}"
  end

  protected
  attr_reader :age

  private 
  attr_reader :real_name

end

criss_angel = Magician.new('Criss Angel', 'Christopher Sarantakos', 54, 'walk on water')
the_amazing_johnathan = Magician.new('The Amazing Johnathan', 'Johnathan Szeles', 63, 'the white rabbit')

p criss_angel.stage_name # Criss Angel
p criss_angel.reveal_name # My real name is Christopher Sarantakos
p criss_angel.signature_trick # walk on water
p criss_angel.older?(the_amazing_johnathan) # false
p criss_angel.age # This should raise an error
p criss_angel.real_name # This should raise an error if the previous line is commented out
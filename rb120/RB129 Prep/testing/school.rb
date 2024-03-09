class School
  attr_reader :name, :mascot

  def initialize(name, mascot)
    @name = name
    @mascot = mascot
  end

  def summer_break
    "School's out for summer!"
  end
end

stingrays = School.new("Eastern HS", "Stingray")
pioneers = School.new("Western HS", "Pioneer")

p stingrays.name # "Eastern HS"
p pioneers.name # "Western HS"
p stingrays.mascot # "Stingray"
p pioneers.mascot # "Pioneer"
p stingrays.summer_break # "School's out for summer!"
p pioneers.summer_break # "School's out for summer!"
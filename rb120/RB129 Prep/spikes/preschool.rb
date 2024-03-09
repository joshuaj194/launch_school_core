
# ### Preschool (by Natalie Thompson)

# Inside a preschool:
# 
# there are 
# 
# children:
  # learn and 
  # play. 
  # have the ability to eat lunch.

# teachers:
  # help a student with schoolwork and 
  # watch them on the playground. 
  # teaches 
  # can supervise a class.
  # have the ability to eat lunch.

# class assistants:
  # help a student with schoolwork and 
  # watch them on the playground. 
  # helps kids with any bathroom emergencies. 
  # have the ability to eat lunch.
  
# a principle
  # can supervise a class.
  # has the ability to expel a kid.
  # have the ability to eat lunch.

# janitors:
  # have the ability to clean
  # have the ability to eat lunch.

# cafeteria workers. 
  # have the ability to serve food. 
  # have the ability to eat lunch.


module Supervise
  def supervise
    puts "#{self.name} oversaw the class. "
  end
end

module Helpable
  def helps_with_schoolwork(student_name)
    puts "#{self.name} helps #{student_name} with their schoolwork."
  end
end

module Watchabale
  def watch
    puts "#{self.name} watches the students while they are on the playground."
  end
end

class Human
  attr_reader :name, :eat_lunch

  def initialize(name)
    @name = name
    @eat_lunch = true
  end

  def eats_lunch
    puts "#{@name} eats lunch at noon with the rest of the school."
  end
end

class Student < Human
  def learns(subject)
    puts "#{self.name} learns about #{subject} at school every day."
  end

  def plays
    puts "#{self.name} plays at school every day during recess."
  end
end

class Teacher < Human
  include Supervise
  include Helpable
  include Watchabale

  def teach(subject)
    puts "#{self.name} teaches the students #{subject} at school."
  end
end

class Assistant < Human
  include Helpable
  include Watchabale
  
  def helps_with_bathroom
    puts "#{self.name} helps with going to the bathroom and in case of emergencies."
  end
end

class Principal < Human
  include Supervise

  def expels(name)
    puts "#{@name} has expelled #{name} for breaking the rules!"
  end
end

class Janitor < Human
  def cleans
    puts "#{@name} cleans the school."
  end
end

class CafeteriaWorker < Human
  def serve_food
    puts "#{@name} serves the food."
  end

  def eats_lunch
    puts "#{@name} eats lunch after noon once the rest of the school finishes eating."
  end
end


josh = Student.new("Josh")
jeremy = Student.new("Jeremy")
jonu = Student.new("Jonu")
teacher = Teacher.new("Mr.Ates")
assistant = Assistant.new("Mr.Gima")
principal = Principal.new("Ms.Veda")
janitor = Janitor.new("Ole Spike")
maam = CafeteriaWorker.new("Ms. Maam")

josh.plays
jeremy.learns("Math")
jonu.eats_lunch

teacher.teach("History")
teacher.helps_with_schoolwork(jeremy.name)
assistant.helps_with_bathroom
maam.serve_food
janitor.cleans
principal.expels(josh.name)
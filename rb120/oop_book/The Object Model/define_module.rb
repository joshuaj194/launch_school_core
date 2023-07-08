# What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.

A module defines behavior/abilities that can be shared across multiple classes of objects via mixins. You define module using the `module` keyword followed by the name of the module in CamelCase followed by method definitions and ending with the `end`keyword. Use the `include` keyword to include modules in a Class. 

module MyAbility
  def repeat(word)
    puts word
  end
end

class MyClass
include MyAbility
end

my_obj = MyClass.new


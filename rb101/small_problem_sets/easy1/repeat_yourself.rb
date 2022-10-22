=begin
Write a method that takes two arguments, a string and a positive integer, 
and prints the string as many times as the integer indicates.

example:
repeat('Hello', 3)

output:
Hello
Hello
Hello
=end

def repeat (text, num)
  num.times { puts text }
end

repeat('Hello', 3)
repeat('Goodbye', 2)
repeat('Hello again', 6)

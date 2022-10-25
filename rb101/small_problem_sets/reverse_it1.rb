# Write a method that takes one argument, a string, and returns a new 
# string with the words in reverse order.

# The tests below should print true.


=begin
input: string
output: string
requirements:
  explicit: reverse the order of the words
  implict: maintain the case

1. take the string
2. turn it into an array
3. reverse the array
4. transform back to string
=end

def reverse_sentence(sentence)
  sen_arr = sentence.split(" ")
  sen_arr.reverse.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''


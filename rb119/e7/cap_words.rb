# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

=begin
Probem:
 Input:string
 Output:string

 Implicit Reqs:words in quotes should be unchanged
 Explicit Reqs:capital letters in the middle of a word should be downcased

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: string
 Output:string
 Returning the same object or new object? new object with the same value

Algorithm:

how does capitalize work? Does it upcase the first letter and downcase all others or just upcase the first letter?
basic flow could be:
 str --> array
 array.each.capitalize
what happens to quoted words in a string when we .split a string?

Code w/ Intent:
=end

require 'pry'

def word_cap(str)
  arr = str.split(" ")
  new_str = arr.map do |word|
    word.capitalize
  end
  # binding.pry
  new_str.join(" ")
end

# Examples

puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('the javaScript language')
puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('four score and seven')
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
puts word_cap('this is a "quoted" word')


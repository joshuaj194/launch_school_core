# Letter Swap
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces.

=begin
Probem: 
	Input: string
	Output: string

	Implicit Reqs: 
  - maintain the case of the letters
  - always return the string
	Explicit Reqs: swap the first and last letter of each word in the string. 

Examples:
	with 0?
	with high numbers?
	with negative numbers?

Data Structures:
	Input: str
	Output: str
	Returning the same object or new object? returning the same object but mutating it. 

Algorithm:

target each word
  str --> arr
target the first and last letters in each word
  each elem in the arr will still be a str, for each elem, remove the first char and the last char, append the first char and prepend the last char.
  letters = elem.split("")
  first = letters[0]
  last = letters[-1]

  new_letters = letters
  new_letters[0] = last
  new_letters[-1] = first

  new_letters.join
Reassign the letters to their new positions
return the new string


Code w/ Intent: 
=end

def word_break(word)
  letters = word.split("")
  first = letters[0]
  last = letters[-1]

  new_letters = letters
  new_letters[0] = last
  new_letters[-1] = first
  new_letters.join("")
end

def swap(phrase)
  words = phrase.split(" ")

  words.map! do |item|
    word_break(item)
  end

  words.join(" ")
end

# Examples:


puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'

puts swap('Oh what a wonderful day it is')
puts swap('Abcde')
# Write a method that takes a string with one or more space separated words and returns a hash that shows
#  the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

=begin
Probem: 
  Input: string
  Output: hash

  Implicit Reqs: punctuation like `.` does count toward word size; empty string == empty hash
  Explicit Reqs: spaces do not count towards word size

Examples:
  with 0?
  with high numbers?
  with negative numbers?

Data Structures:
  Input: string
  Output: hash
  Returning the same object or new object? no

Algorithm:

  initialize an empty hash
  str --> array separated by space
  loop through array
    Update empty_hash and set item.length as the key
    for the value set += 1
    end




Code w/ Intent: 
=end

def word_sizes(str)
  hsh = {}

  words = str.split(" ")
  words.each_with_index do |word, dex|
    if hsh.keys.include? (word.length)
      hsh[word.length] += 1
    else
      hsh[word.length] = 1
    end
  end

  hsh
end

# Examples:

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
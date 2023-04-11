# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

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
    word = word.delete('^a-zA-Z')
    if hsh.keys.include? (word.length)
      hsh[word.length] += 1
    else
      hsh[word.length] = 1
    end
  end

  p hsh
end

# Examples:

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
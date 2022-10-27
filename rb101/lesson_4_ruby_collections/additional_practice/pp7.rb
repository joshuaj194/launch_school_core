# Create a hash that expresses the frequency with which each letter occurs 
# in this string:

statement = "The Flintstones Rock"

=begin
input: string
output: hash
requirements: each letter in string becomes the key in the hash and the 
number of occurrences becomes the corresponding value

examples: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

data structures: 
string --> hash

algo:
CREATE new hash
ITERATE through the string
for each 
  hash[letter] = letter.count
end
=end

letter_count = {}

statement.each_char do |char|
  letter_count[char] = statement.count char
end

puts letter_count
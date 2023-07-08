# Write a method that counts the number of occurrences of each element in a given array.

# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

=begin
Probem:
 Input:array
 Output: string following this format "element => occurrences"

 Implicit Reqs:
 Explicit Reqs: elements are case-sensitive;

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: array
 Output: string
 Returning the same object or new object? 

Algorithm:

initialize an empty hash and assign it to a variable
iterate through the array
  if current element exists as a key in the output hash, use the element as a hash key to add 1 to the value for that key. If not, create the current element as a new key and set its value to 1. 
Once iterated through, create another loop to iterate through the hash and print out the required statement in this format "element => occurrences"



Code w/ Intent:
=end

def count_occurrences(arr)
  out_hsh = {}
  arr.each do |val|
    if out_hsh.keys.include?(val)
      out_hsh[val] += 1
    else
      out_hsh[val] = 1
    end
  end

  out_hsh.each do |key,val|
    puts " #{key} => #{val}"
  end

end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values 
# are the positions in the array.

=begin

input: array
output: hash  
requirements:
  each element in the array will become the key in the hash and the corresponding
  value will be the element's index position. 

no examples/test cases 

data structures
array --> hash

algo
create the output hash

iterate through the array
  for each element, SET hash[element] = element.index
end

code
=end

output_hash = {}

for flintstone in flintstones
  output_hash[flintstone] = flintstones.find_index(flintstone)
end

puts output_hash
# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

hsh = {}

flintstones.each_with_index do |val, index|
  hsh[val] = index
end

puts hsh 

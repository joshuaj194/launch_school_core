ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# In the age hash, remove people with age 100 and greater.

=begin
input: hash
output: the same hash with a select few elements removed
requirements: 
  people with age >= 100 need to be removed from the hash

data structure:
mutating an existing hash

algo:
for each key in the hash, check if the corresponding value is >= 100, if it is
  then drop it from the hash

=end

ages.delete_if {|k,v| v >= 100}

puts ages



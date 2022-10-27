ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Add up all of the ages from the Munster family hash:

=begin
input: hash
output: integer
requirements: sum the values from the hash

no examples/test cases

data structure: hash --> array --> integer

algo:
  return an array with just the hash values
  sum the values in the array
  return the sum

=end

combined_ages = 0

def sum_ages (hash)
  combined_ages = hash.values.sum
  combined_ages
end

puts sum_ages(ages)
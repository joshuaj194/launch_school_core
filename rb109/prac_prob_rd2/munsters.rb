# Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

=begin
Modify the hash such that each member of the Munster family has an additional "age_group" 
key that has one of three values describing the age group the family member is in (kid, adult,
or senior). Your solution should produce the hash below

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

=end

=begin
Probem: Add another key-value pair to a hash that is itself a value in a key-value pair
	Input: nested hash
	Output: nested hash

	Implicit Reqs:
	Explicit Reqs: target the values in the outer hash and add a key-value pair to each value

Examples:
	with 0?
	with high numbers?
	with negative numbers?

Data Structures:
	Input:
	Output:
	Returning the same object or new object?

Algorithm:


Code w/ Intent:
=end



# Incorrect solution since only the values for age_group are returned in an array since map
# returns an array and performs tranformation based on the return value of the block. 
# munsters2 = munsters.map do |key, val| 
#   if val["age"] >= 65
#       val["age_group"] = "senior"
#     elsif val["age"] >= 18
#       val["age_group"] = "adult"
#     else 
#       val["age_group"] = "kid"
#     end
# end

munsters2 = munsters.each do |k,val|
  case val["age"]
  when 0...18
    val["age_group"] = "kid"
  when 18...65
    val["age_group"] = "adult"
  else
    val["age_group"] = "senior"
  end
end

p munsters2
p munsters





    
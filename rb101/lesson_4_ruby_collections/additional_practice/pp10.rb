munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

=begin
Modify the hash such that each member of the Munster family has an additional
"age_group" key that has one of three values describing the age group the
family member is in (kid, adult, or senior). Your solution should produce
the hash below
=end

=begin
input: nested hash
output: nested hash
requirements:
  add another key to the the inner most hash for each outer hash
  add in logic to determine the value of the newly added key

rules: 
A kid is in the age range 0 - 17, an adult is in the range 18 - 64
and a senior is aged 65+.

example:

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

algo:
no new hash needed since the original one is being modified. 

for each iteration of the outer hash, 
  we need to reference the :age key and
    check if it is between 0 and 17, 18 and 65 or 65+
    assign one of kid, adult or senior based on what is true
      we add an age_group key and set it to the returned value.

=end

munsters.map do |key, value|
  if munsters[key]["age"] > 65
    munsters[key]["age_group"] = "senior"
  elsif munsters[key]["age"] > 18
    munsters[key]["age_group"] = "adult"
  else
    munsters[key]["age_group"] = "kid"
  end
end

puts munsters
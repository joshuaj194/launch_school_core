# Given this nested Hash, figure out the total age of just the male members of the family.

def male_age(hash)
  age = 0
  males = hash.select { |k, v| v["gender"] == "male"}
  males.each do |k, v|
    age += v["age"]
  end
  age
end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

puts male_age(munsters)
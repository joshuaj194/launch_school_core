def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# "My string looks like this now: rutabaga"
=begin
 ^^ this was wrong because += does not mutate the caller so `my_string`
 wouldn't have changed. Duh. 
=end
puts "My array looks like this now: #{my_array}"
# "My array looks like this now: ["pumpkin", "rutabaga"]"
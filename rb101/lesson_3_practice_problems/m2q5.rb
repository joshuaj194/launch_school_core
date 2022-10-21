# def tricky_method(a_string_param, an_array_param)
#   a_string_param << "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"


=begin
How can we change this code to make the result easier to predict and easier 
for the next programmer to maintain? That is, the resulting method should not
mutate either argument, but my_string should be set to 'pumpkinsrutabaga' and
my_array should be set to ['pumpkins', 'rutabaga']
=end

# Solution

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin
ok took me a second but I think I understand now. Line 32 above reassigns the
variables to the NEW object created by the `not_so_tricky_method` and therefore
the arguments that were passed in were not mutated. It might look like it was
mutated but they weren't, the `my_string` and `my_array` labels (variables) 
were just applied to different objects.
=end





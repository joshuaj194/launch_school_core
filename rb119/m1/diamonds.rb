# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

=begin
Probem:
 Input: integer
 Output: a string that is formatted as a n * n grid containing a 4-point diamond highlighted using `*`s.

 Implicit Reqs: return a string that is n lines long and n characters wide. 
 Explicit Reqs: create a four point diamond. The east and west points will always be in the middle of the diamond and should be on a line that `n` characters long where all characters are `*`. The north and south points should be on the first and last line respectively and should be centered among n characters. Easiest way to find this location would be to round up n/2. This same value will also be the middle line which contains all `*`s and contains the east and west points. 

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: 
 Output:
 Returning the same object or new object? 

Algorithm:

take the input
create the grid
  Maybe use a hash? 
    the key reflects the line number
    the value is an array containing n elements

Mark the middle line of the grid
  the middle line is n/2 rounded up but because the hash above is 0 indexed, we can just leave it as n/2.

Mark the north and south of the grid
mark the intermediary lines of the grid
return the grid
end




Code w/ Intent:
=end

# def grid(int)
#   hsh = {}
#   middle = int/2

#   int.times do |val|
#     hsh[val] = ("*" * int)
#   end 

#   hsh.each do |k,v|
#     if k == middle
#       v = "*" * int
#     elsif
#       k 
#     puts v
#   end

# end

# def mark_grid(int)


def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond(1)
diamond(3)
diamond(9)

# # Examples

# ```
# diamond(1)

# *
# ```

# ``` 
# diamond(3)

#  *
# ***
#  *
# ```

# ```
# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

#   ```
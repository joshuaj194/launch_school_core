# Given this data structure write some code to return an array containing the colors of the fruits, and 
# the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

=begin

in:
  out:
  requirements:

ex: [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

ds:
in: hash
  out: multidimensional array

algo:
for each key in the main hash
  pull the value for the COLORS and SIZE keys 
  add them to a new array
  change the values in the new array
  if color, make it capitalized
    if size, make it uppercase

=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

final_arr = []

hsh.map do |_,v|
  v.map do |key, val|
    if v[:type] == 'fruit'
        final_arr << v[:colors].map {|str| str.capitalize}
    elsif v[:type] == 'vegetable'
      final_arr << v[:size].upcase
    else
    end
  end
end

puts final_arr
puts hsh
puts [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

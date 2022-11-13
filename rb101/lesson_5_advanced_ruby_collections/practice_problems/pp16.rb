# A UUID is a type of identifier often used as a way to uniquely identify items...which may 
# not all be created by the same system. That is, without any form of synchronization, two 
# or more separate computer systems can create new items and label them with a UUID with 
# no significant chance of stepping on each other's toes.

# It accomplishes this feat through massive randomization. The number of possible UUID 
# values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections 
# like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

=begin
in:nothing
  out:string
  requirements:string must contain 32 hexadecimal characters
  - in the format 8-4-4-4-12
  - joined by '-'
  - what is hexadecimal?

examples - "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

ds:
in:nothing
  out:string

algo:
5 different strings of 3 different lengths
join all the strings for final output
each string must use hexadecimal (0-9;a-f)
we can generate a random string value by adding all potential values into an arry
and that sampling that array

SET arr = [hex values]

SET final_arr = []
final_arr[0] << (0..8).times { |val| arr.sample}
final_arr[1] << (0..4).times { |val| arr.sample}
final_arr[2] << (0..4).times { |val| arr.sample}
final_arr[3] << (0..4).times { |val| arr.sample}
final_arr[4] << (0..12).times { |val| arr.sample}
uuid_string = final_arr.join(-) 
=end

=begin

much too verbose of an approach, that ultimately does not work the way it is. 

hex_vals = [1,2,3,4,5,6,7,8,9,'a','b','c','d','e','f']

final_arr = []
final_arr[0] << 8.times { |val| hex_vals.sample}
final_arr[1] << 4.times { |val| hex_vals.sample}
final_arr[2] << 4.times { |val| hex_vals.sample}
final_arr[3] << 4.times { |val| hex_vals.sample}
final_arr[4] << 12.times { |val| hex_vals.sample}
uuid_str = final_arr.join('-') 
puts uuid_str

=end

# solution:

def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end
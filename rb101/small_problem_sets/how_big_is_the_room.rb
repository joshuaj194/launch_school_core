# Build a program that asks a user for the length and width of a room in 
# meters and then displays the area of the room in both square meters and 
# square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

puts "Enter the length of the room in meters:"
length_m = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width_m = gets.chomp.to_i

area_m = length_m * width_m
area_ft = area_m.to_f * 10.7639
area_ft = area_ft.ceil(2)

puts "The area of the room is #{area_m} square meters (#{area_ft} square feet)."


=begin
Write a method that counts the number of occurrences of each element in a 
given array.

The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

Expected output:
car => 4
truck => 3
SUV => 1
motorcycle => 2
=end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

=begin
input: array
outpout: hash
requirements:
  explicit:
    Print a each item and the number of times it appers
    case matters
=end



def count_occurrences(vehicles)
  outhash = {}
  for vehicle in vehicles
    outhash[vehicle] = vehicles.count(vehicle)
  end
  puts outhash
end

count_occurrences(vehicles)
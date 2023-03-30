numbers = [1, 2, 1, 3, 1, 4, 1, 5]

# What do the following method calls do (assume we reset numbers to the original 
# array between method calls)?

puts "Before delete_at, numbers objectId is #{numbers.object_id}"
numbers.delete_at(1)
p numbers
puts "After delete_at, numbers objectId is #{numbers.object_id}"

puts "Before delete, numbers objectId is #{numbers.object_id}"
returned = numbers.delete(1)
p numbers
puts "After delete, numbers objectId is #{numbers.object_id}"
puts returned
# Given the following data structure and without modifying the original array, use the 
# map method to return a new array identical in structure to the original but where the 
# value of each integer is incremented by 1.

og_arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# Not quite correct:
# new_arr = og_arr.map do |element|
#   ele_arr = element.to_a
#   ele_arr.each do |ele|
#     ele[1] += 1
#   end
# end

# correct:

new_arr = og_arr.map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

puts og_arr
puts new_arr
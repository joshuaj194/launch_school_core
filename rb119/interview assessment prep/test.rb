arr = %w(a e i o u)

# uppppp = arr.select do |letter|
#   next if letter == 'e'
#   # break if letter == 'o'
#   p letter.upcase
#   letter.upcase
# end


# p uppppp

start = arr.length - 1

reverse = []

# loop do 
#   reverse << arr[start]
#   start -= 1
#   break if start < 0
# end

# arr.each do |letter|
#   reverse.unshift(letter)
# end

p arr
p arr.object_id

arr.map!.with_index do |elem, idx|
  if idx % 2 == 0
    arr.delete_at(idx)
  else
    elem
  end
end
 
p arr
p arr.object_id

# p reverse
  
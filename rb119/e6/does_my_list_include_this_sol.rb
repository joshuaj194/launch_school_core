def include?(array, value)
  !!array.find_index(value)
end

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end
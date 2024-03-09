def url?(str)
  return true if str.match(/\Ahttps?:\/\/\S*$\z/)
  return false
end

puts url?('https://launchschool.com')     # -> true
puts url?('http://example.com')           # -> true
puts url?('https://example.com hello')    # -> false
puts url?('   https://example.com')       # -> false
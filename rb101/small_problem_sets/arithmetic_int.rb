puts "==> Enter the first number:"
first = gets.chomp.to_i

puts "==> Enter the second number:"
second = gets.chomp.to_i

sum = first + second
diff = first - second
product = first * second
quotient = first / second
remainder = first % second
power = first ** second


puts "==> #{first.to_s} + #{second.to_s} = #{sum.to_s}"  
puts "==> #{first.to_s} - #{second.to_s} = #{diff.to_s}"  
puts "==> #{first.to_s} * #{second.to_s} = #{product.to_s}"  
puts "==> #{first.to_s} / #{second.to_s} = #{quotient.to_s}"  
puts "==> #{first.to_s} % #{second.to_s} = #{remainder.to_s}"  
puts "==> #{first.to_s} ** #{second.to_s} = #{power.to_s}"  
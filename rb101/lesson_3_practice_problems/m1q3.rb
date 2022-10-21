def factors(number)
  divisor = number
  factors = []
  loop do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  break if divisor <= 0
  end
  factors
end

puts factors(1)
puts factors(2)
puts factors(9)
puts factors(50)

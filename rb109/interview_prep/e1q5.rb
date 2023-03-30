# Programmatically determine if 42 lies between 10 and 100.

# hint: Use Ruby's range object in your solution.

def is_between(val, num1, num2)
  puts true if (num1..num2).include?(val)
  puts false if !((num1..num2).include?(val))
end

is_between(42, 10, 100)
is_between(42, 50, 100)


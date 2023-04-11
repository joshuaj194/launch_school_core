# Given a List [] of n integers , find minimum number to be inserted in a list, so that sum of all elements of list should equal the closest prime number .

# Notes
# List size is at least 2 .

# List's numbers will only positives (n > 0) .

# Repetition of numbers in the list could occur .

# The newer list's sum should equal the closest prime number .

=begin
Probem:
 Input: array of integers
 Output:integer

 Implicit Reqs:return value can be 0; closest means the current sum or the next highest prime number. Never goes lower than the current sum. 
 Explicit Reqs:return a single integer; the sum of the array including this integer must equal a prime number.

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: array   
 Output: integer
 Returning the same object or new object? new object

Algorithm:

Sum of current array
is the sum a prime number?
  2..sum each do |val|
    if sum % val == 0
      false
    elsif sum % sum == 0
      true
    end
  end
if so
  return 0
else
  find next prime number
  return next_prime - sum
end

total = arr.sum

def is_prime(num)
  (2...num).map do |val|
    if num % val == 0
      false
    else
      true
    end
  end
end

if is_prime(total).include?(false)
  next_prime(total) - total
else
  0
end




Code w/ Intent:


=end

def is_prime(num)
  (2...num).map do |val|
    if num % val == 0
      false
    else
      true
    end
  end
end

def next_prime(val)
  until is_prime(val).all?(true)
    val += 1
  end
  val 
end

def minimum_number(list)

  total = list.sum
  
  if is_prime(total).all?(true)
    0
  else
    next_prime(total) - total
  end
  
end
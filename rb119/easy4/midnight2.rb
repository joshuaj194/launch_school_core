# As seen in the previous exercise, the time of day can be represented as the number of minutes before
#  or after midnight. If the number of minutes is positive, the time is after midnight. If the number
#   of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before
#  and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.


# Probem: Take a 24 hour format string value and return an integer between 0 and 1439
# 	Input: string formatted in "hh:mm"
# 	Output: integer

# 	Implicit Reqs: 
# 	Explicit Reqs: two separate methods; both return integers within 0..1439; Both "00:00" and "24:00" should return `0`

# Examples:
# 	with 0?
# 	with high numbers?
# 	with negative numbers?

# Data Structures:
# 	Input: string
# 	Output: integer
# 	Returning the same object or new object? new object


# Algorithm:
# string --> integer
# since it's not as simple as using `to_i`, we need to create an arr using the str first. Then we can transform each element into an integer. Perform math to get to the number between 0..1439
# Use constants like minutes per hour and hours per day
# we need to get from hh:mm to mmmm so that means a conversion of ((hh * minutes per hour) + mm). The exception to this rule is when the string == "00:00" or "24:00", we always return 0. 
# before midnight = 1440 - ((hh * minutes per hour) + mm)
# after midnight = 0 + ((hh * minutes per hour) + mm)

# Code w/ Intent: 

def normalize_to_mins(str)
  arr = str.split(':')
  mins = 0
  mins = (arr[0].to_i * 60) + (arr[1].to_i)
end

def after_midnight(after_str)
  if (after_str == "00:00" || after_str == "24:00")
    minutes = 0
  else 
    minutes = normalize_to_mins(after_str)
  end

  minutes
end

def before_midnight(before_str)
  if (before_str == "00:00" || before_str == "24:00")
    minutes = 0
  else
    minutes = 1440 - normalize_to_mins(before_str)
  end

  minutes
end

# Examples:


puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
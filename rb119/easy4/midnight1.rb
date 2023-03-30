# After Midnight (Part 1)
# The time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, 
# the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour 
# format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Examples:


MINS_IN_DAY = 1440

# First step is to get the time minute based time and get it to under 1440

def time_of_day(time)

  if time.abs > MINS_IN_DAY
    real_time = time.abs.divmod(MINS_IN_DAY)[1]
  else
    real_time = time.abs
  end

  if time < 0
    time_str = MINS_IN_DAY - real_time
  elsif time > 0
    time_str = real_time
  else
    time_str = 0
  end

  time_arr = time_str.divmod(60)

  time_arr.map! do |val|
    val = val.to_s
    if val.length == 1
      val = val.prepend('0')
    else 
      val
    end
  end

  time_arr.join(':')
end

# if over 1440, the remainder of time_in_minutes.divmod(minutes_per_day) is what we want to work with
# that would be the second value in the array returned by divmod so it would be
#  time_in_minutes.divmod(minutes_per_day)[1]

# Second step would be to take that number and if it's negative, subtract it from 1440. if it's positive, 
# add it to 0

# third step would be to run result.divmod(60) and that provides the an array with [hh, mm]

# fourth step would be to ensure that the returned array is in [hh, mm]. Start by turning each into a string,
# if it's length is 1, use `prepend` to add a '0'

# step 5 would be to join the items in the array using : and returning that result



puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437)
puts time_of_day(3000)
puts time_of_day(800)
puts time_of_day(-4231)



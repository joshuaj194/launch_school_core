# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Examples:

=begin
Probem:
 Input: float between 0 and 360
 Output:string with degree, minute and seconds separated by their respective symbols

 Implicit Reqs: any degree value that is a float overflows into minutes which in turn overflows into seconds
 Explicit Reqs: format must be %(#{degree}degree-symbol#{minute}'#{second}")

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: float
 Output: string
 Returning the same object or new object? new object

Algorithm:

float (degree_float) --> integer == degree
degree_leftovers = degree_float - degree_float.to_i
minutes = (degree_leftovers * 60).to_i
minutes_leftovers = degree_leftovers - degree_leftovers.to_i
seconds = (minutes_leftovers &* 60)to_i

How do we target the digits after the decimal in a float?
  How do we maintain float form?

Code w/ Intent:
=end

require 'pry'

DEGREE = "\xC2\xB0"
def dms(degree_float)
  degree = degree_float.to_i
  degree_leftovers = degree_float - degree
  minutes = degree_leftovers * 60
  minutes_leftovers = minutes - minutes.to_i
  seconds = minutes_leftovers * 60
  # binding.pry
output = format(%(#{degree}#{DEGREE}%02d'%02d"), minutes.to_i, seconds.to_i)
end

puts dms(30) == %(30°00'00")
puts dms(30)
puts dms(76.73) == %(76°43'48")
puts dms(76.73)
puts dms(254.6) == %(254°36'00")
puts dms(254.6)
puts dms(93.034773) == %(93°02'05")
puts dms(93.034773)
puts dms(0) == %(0°00'00")
puts dms(0)
puts dms(360) == %(360°00'00") || %(0°00'00")
puts dms(360)
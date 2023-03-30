# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. 
# So, the years 1901-2000 comprise the 20th century.

=begin
Probem: take a year and return its century
	Input: integer
	Output: string

	Implicit Reqs: 
	Explicit Reqs: 
  - the suffix for the string should be grammatically correct
  - new centuries begin in the year ending with 01

Examples:
	with 0?
	with high numbers?
	with negative numbers?

Data Structures:
	Input:integer
	Output:string
	Returning the same object or new object? new object

Algorithm:

- determine the correct century
  - take the number, depending on the number of digits in the number
  - if it's 3 or less, it falls between the 1st and 9th centuries
  - if it's 4, then it falls between the 10th and 99th centuries
  - if it's 5, then if falls between the 100th and 999th centuries

  take the year argument, turn it into an array
  year = arg.to_s.split("")



  if year.length < 3
    century = "1"
  elsif year.length == 3
    century = year[0]
  else
    century = year[0,(year.length-2)]
  end

  if year[-2,2] == ["0","0"]
    century = century.join.to_i
  else
    century = century.join.to_i + 1
  end

  if century >= 11 && <= 19
    suffix = "th"
  elsif century.digits[0] == 1
    suffix = "st"
  elsif century.digits[0] == 2
    suffix = "nd"
  elsif century.digits[0] == 3
    suffix = "rd"
  else
    suffix = "th"
  end
  


  




  - if it ends with 00, then it's the end of the century
  - if it ends with 01, it's the start of the next century
- determine the correct ending
  - possible endings:
  - st, nd, rd or th
    - first, second, third, fourth, fifth, sixth, seventh, eight, ninth, tenth, eleventh, twelfth, thirteenth, fourteenth, fifteenth, seventeenth, eighteenth, nineteenth, twentieth, twenty-first, twenty-second, twenty-third
  - except for 11-19, if it ends with:
    - 1, it's "st"
    - 2, it's "nd"
    - 3, it's "rd"
    - everything else ends with "th"


Code w/ Intent: 

=end

def century(year)
  year = year.to_s.split("")

  if year.length < 3
    prefix = ["1"]
  elsif year.length == 3
    prefix = [year[0]]
  else
    prefix = year[0,(year.length-2)]
  end

  if year.length < 3 || year[-2,2] == ["0","0"]
    prefix = prefix.join.to_i
  else
    prefix = prefix.join.to_i + 1
  end

  if prefix.digits[0,2].reverse.join.to_i >= 11 && prefix.digits[0,2].reverse.join.to_i <= 19
    suffix = "th"
  elsif prefix.digits[0] == 1
    suffix = "st"
  elsif prefix.digits[0] == 2
    suffix = "nd"
  elsif prefix.digits[0] == 3
    suffix = "rd"
  else
    suffix = "th"
  end

  prefix.to_s + suffix
end

# Examples:

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
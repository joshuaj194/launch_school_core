# INCOMPLETE

# Write a method that takes a year as input and returns the century. The 
# return value should be a string that begins with the century number, and ends 
# with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 
# comprise the 20th century

=begin
input: integer
output: string
requirements:
  A century begins in years that end with 01
  match the number with the appropriate conjugation - st, nd, rd or th
  take into consideration inputs as little as 1 digit up to atleast 5 digits, maybe more?

ds:
in: will be inputted as a string that we need to transform into an integer
out: string

algo:
PUTS What year are you wondering about?
SET input_year = gets.chomp.to_i
SET century = 0
SET ending = ''

two part problem:
DEF determine_the_century(input_year)

century.length is equal to the input_year.length - 2
century = century.length of the given input
end


DEF determine_the_ending()
  if last_two_digits ==  00 OR last_two_digits == 04..19 
    ending << 'th'
  elsif last_digit == 1
    ending << 'st'
  elseif last_digit == 2
    ending << 'nd'
  elseif last_digit == 3
    ending << 'rd'
  end

  ending
end



SET output_str = "#{century.to_s} + #{ending}"
=end

# examples

puts "What year are you wondering about?"
input_year = gets.chomp
century = 0
ending = ''


def determine_the_century(input_year)
  century_length = input_year.length - 2

  loop do

  century = century.length of the given input
end


DEF determine_the_ending()
  if last_two_digits ==  00 OR last_two_digits == 04..19 
    ending << 'th'
  elsif last_digit == 1
    ending << 'st'
  elseif last_digit == 2
    ending << 'nd'
  elseif last_digit == 3
    ending << 'rd'
  end

  ending
end



SET output_str = "#{century.to_s} + #{ending}"

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
=begin
Write a program that asks the user to enter an integer greater than 0, 
then asks if the user wants to determine the sum or product of all numbers 
between 1 and the entered integer.

Examples:

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end

def prompt(message)
  puts ">> #{message}"
end

prompt("Please enter an integer greater than 0:")
input = gets.chomp.to_i

prompt("Enter 's' to compute the sum or 'p' to compute the product.")
action = gets.chomp
int_arr = []

(1..input).each do |num|
  int_arr << num
end

if action == 's'
  int_arr_s = int_arr.sum
  prompt("The sum of the integers between 1 and #{input.to_s} is  #{int_arr_s}")
elsif action == 'p'
  int_arr_p = 1  
  int_arr.each do |num|
    int_arr_p *= num
  end
  prompt("The product of the integers between 1 and #{input.to_s} is  #{int_arr_p}")
end
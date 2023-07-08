# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

=begin
Probem:
 Input: integer
 Output: array

 Implicit Reqs: 
 Explicit Reqs: return an array identifying which lights are in the ON position after n repititions

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: integer
 Output: array
 Returning the same object or new object? new object

Algorithm:

use the input to create an array of lights
each light has to have a value for position - `on` or `off`
maybe create a hash in step instead of an array where, the integer is the key and the value is `off` by default for all keys. 
go through rounds changing the values of specific keys
the keys are determined by the current iteration value
until we reach n iteration
  change the position of the light at current iteration and then every light that is current iteration away until all lights have been iterated through

Then, return the keys for which the value is `on`


Code w/ Intent:
=end
require 'pry'

def lights_on(int)
  hsh = {}
  arr = (1..int).to_a

  arr.each do |val|
    hsh[val] = "off"
  end

  arr.each do |val|
    light = val
    until light > int
      if hsh[light] == "off"
        hsh[light] = "on"
      else
        hsh[light] = "off"
      end
      # binding.pry
      light += val
    end
  end

  on_hsh = hsh.select do |k,v|
    v == "on"
  end

  on_hsh.keys
end


# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

p lights_on(5)
p lights_on(10)
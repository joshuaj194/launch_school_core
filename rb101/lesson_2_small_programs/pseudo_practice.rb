# a method that returns the sum of two integers

=begin
define the method; it needs two arguments - one for each integer; add the two integers; return the value; 

START
SET sum = 0
DEFINE method_name(int1, int2)
  SET sum = int1 + int2

PRINT SUM
END
=end 

# a method that takes an array of strings, and returns a string that is all those strings concatenated together

=begin

define the output string as a blank string; define the method: with one array argument; Append each value within the array to the output string; return the output string

SET output_string = ""
SET iterator = 0
DEFINE array_to_str(arr)
  WHILE iterator < arr.length
    SET output_string << arr(iterator)
    SET iterator += 1  
    
PRINT output_string
END
=end

# a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element.

=begin

define an output array; define a method with an array as the argument; Since arrays start with 0, every other element would be 0,2,4,6,8... so using a divisible by 2 filter would do the trick; add every element from
the argument array that is divisible by 2 to the output array; return the output array

START
SET end_arr = []
SET iterator = 0

DEFINE every_other(arr)
  WHILE iterator < arr.length
    IF iterator % 2 == 0
      end_arr << arr[iterator]
      iterator += 1
    ELSE
      iterator += 1
      next

PRINT end_arr
END

=end


# a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 
# 3rd 'x'). If the given character does not occur at least 3 times, return nil.

=begin

set output to nil; set iterator1 (used to track index) to 0; set iterator2 (used to track when we reach the third instance) to 0; define the method which takes one string argument and one character argument; first 
step would be to transform the string into an array; set a variable equal to the character argument; compare the output of each value within the array to the character variable and if equal add one to the iterator2
and set output = iterator1; if iterator2 is not equal to three, set output = nil; return the output 

START
SET output = nil
SET index = 0
SET iterator = 0

DEFINE index_which(string, character)
  SET arr = string.chars
  SET char_str = character.to_s
  WHILE index < arr.length
    BREAK if iterator = 3
    IF  arr[index] == char_str
      SET ouput = index
      SET index += 1
      SET iterator += 1
    ELSE
      next
  
  IF iterator != 3
    SET output = nil
  ELSE
    PRINT output

END
=end

# a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array,
# while the elements of the second array should become the elements at the odd indexes.You may assume that both array arguments have the same number of elements.


=begin

set an output array; set three variables to 0 - one to track the output array index, one to track the argument array 1's index and the other to track arg array 2's index;  define a method that 
takes two array arguments; while the arg_arr variable is less than the arg_arr.length, if even numbered index, append the value from array 1 and add one to the arg_arr1_index variable. If odd,
append the value from array 2 and add one to the arg_arr2_index variable


START
output_arr = []
out_index = 0
arr1_index = 0
arr2_index = 0

DEFINE alt_arr (arr1, arr2)
  WHILE out_index < arr1.length + arr2.length
    IF out_index % 2 == 0
      SET output_arr << arr1[arr1_index]
      SET out_index += 1
      SET arr1_index += 1
    ELSE
      SET output_arr << arr1[arr2_index]
      SET out_index += 1
      SET arr2_index += 1

 PRINT output_arr     
END
=end



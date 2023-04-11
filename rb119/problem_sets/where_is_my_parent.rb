# Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All are having great fun on the dance floor when suddenly all the lights went out. It's a dark night and no one can see each other. But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.

# Legend:
# -Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".
# -Function input: String contains only letters, uppercase letters are unique.

# Task:
# Place all people in alphabetical order where Mothers are followed by their children, i.e. "aAbaBb" => "AaaBbb".


=begin
Probem:
 Input: string with letters only
 Output:string

 Implicit Reqs:always return atleast a string, even if empty
 Explicit Reqs: lower case letters after uppercase letters, sort the upper-lower set alphabetically. 

Examples:
 with 0? 
 with high numbers? 
 with negative numbers?

Data Structures:
 Input: string
 Output: string
 Returning the same object or new object? new object

Algorithm:

Can't use sort alone becuase uppercase letters come earlier in the ASCII table so it will sort all uppercase letters first and then lowercase letters. 

could try to split the upper and lower case letters into two different arrays. 

Sort each array. 
create a new string
Add first uppercase value to the string
find all lowercase matching values and add them to the string as well. 
Every uppercase value has atleast one match lowercase value so we could just `shift` them off the lowercase array into the new string.

Code w/ Intent:
=end
# def uppercase?(word)
#   up_lets = ""
#   word.split("").each do |letter|
#     if letter.upcase == letter
#       up_lets += letter
#     end
#   end

#   up_lets
# end

def find_children(str)
  low_str = str.downcase
  sort_low_arr = low_str.split("")
  sort_low_arr.sort!
  sort_low_arr.map do |val|
    if sort_low_arr.any?(val.upcase) == true
      val
    else
      val.upcase!
    end
  end

  sort_low_arr.join("")
end 
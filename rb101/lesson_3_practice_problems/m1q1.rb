text = "The Flintstones Rock!"

# didn't read the detail about it being one line 
# 10.times do 
#   puts text
#   text.prepend(" ")
# end

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

=begin
 was a bit confusde by the `" " * number` but it works because when using
 .times, it passes in integers that increment with each iteration so the 
 the number of blank spaces increases by one each time. 
=end 

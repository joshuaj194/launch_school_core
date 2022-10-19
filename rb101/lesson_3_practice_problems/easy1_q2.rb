=begin

! has different meanings based on the context. != means not equal to 
while uniq! means that the caller of the method will be mutated. ? on the
other hand is checking to see if a statement is true. When used with methods,
it is also used to check whether something is true about the caller. 

what is != and where should you use it?
  "not equal to"; It is used for comparison. 

put ! before something, like !user_name
  would return the opposite of what user_name would return. Usually user_name
  would return `true` but !user_name would return `false`

put ! after something, like words.uniq!
  this is often an indicator of a method that mutates the caller. `uniq!`
  returns the original array without any duplicates. 

put ? before something
  results in a syntax error? can't find anything else. 

put ? after something
  checks the truthiness of that something

put !! before something, like !!user_name
  Returns the opposite of the opposite of `user_name`. Might be better
  understood as `!(!(user_name))`. This would return `true`
  
  =end
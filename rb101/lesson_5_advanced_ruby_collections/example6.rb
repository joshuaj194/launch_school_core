Let's mix it up now with some variation. In the below example, we have an array of 
hashes, and we want to select all elements where every key matches the first letter of 
the value. Note that the keys are symbols here, so we'll have to do some conversion 
before comparison.

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]

# What is the type of action being performed (method call, block, conditional, etc..)?
# What is the object that action is being performed on?
# What is the side-effect of that action (e.g. output or destructive action)?
# What is the return value of that action?
# Is the return value used by whatever instigated the action?

value[0] == key.to_s returns true or false
this return value is used by the block which in turn returns a true or false for to the 
`all` method for the each hash passed to that method through the outer block. The `all` 
command returns true or false for each command back to the outer block which in turn 
returns true or false to the `select` command. The `select` command returns the hash(es)
for which the outer block returns `true`.
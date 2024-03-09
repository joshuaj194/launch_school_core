sentences = ["The ice cream truck is rolling on by", "There is a dog in the park", "There are jumping lizards on the fountain", "Why is there no rain today? I brought an umbrella for nothing.", "There is a dog park nearby!"]
puts sentences.inject{ |memo, sentence| 
    if memo.size < sentence.size
        memo = sentence
    else
        memo
     end
}
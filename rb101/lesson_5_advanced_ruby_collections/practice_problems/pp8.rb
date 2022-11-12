# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


def vowel(hash)
  hash.each do |k, v|
    v.each do |ele|
      ele.each_char { |c| puts c if c.match?(/[aeiou]/)}
    end
  end
end

vowel(hsh)
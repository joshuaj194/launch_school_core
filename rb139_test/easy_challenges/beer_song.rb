class BeerSong
  def self.verse(num)
    if num > 2
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, #{num-1} bottles of beer on the wall.\n"
    elsif num == 2
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
      "Take one down and pass it around, #{num-1} bottle of beer on the wall.\n"
    elsif num == 1
      "#{num} bottle of beer on the wall, #{num} bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def self.verses(first,last)
    arr = []
    verses = []
    (last..first).each do |val|
      arr << val
    end
    arr.reverse.each do |val|
      verses << verse(val)
    end

    verses.join("\n")
  end

  def self.lyrics
    verses(99,0)
  end

end
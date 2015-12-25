phrase = "Oh, the sea is so full of a number of fish. If a fellow is patient, he might get his wish!"

sorted = phrase.gsub!(/[^a-zA-Z ]/,'').split(" ")

csort= sorted.sort { |a,b| a.upcase <=> b.upcase }

puts csort
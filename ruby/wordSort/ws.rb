phrase = "Oh, the sea is so full of a number of fish. If a fellow is patient, he might get his wish!"

sorted = phrase.gsub!(/[^a-zA-Z ]/,'').split(" ").sort { |a,b| a.upcase <=> b.upcase }

puts sorted
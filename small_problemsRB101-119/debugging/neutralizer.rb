def neutralize(sentence)
  words = sentence.split(' ')
  words.reject do |word|
    negative?(word)
  end.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# We end up skipping over the word `boring`.  This is because we iterate through the array and delete elements
# as we do so.  index 0 is `These` then index 1 is `dull` which gets deleted.  Now the array has `boring` at index 1
# which has already been iterated over so it goes to index 2 which is now `cards`.

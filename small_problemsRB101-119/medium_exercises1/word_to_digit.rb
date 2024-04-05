# P & E: Take a sentence string for the input
#        Return the SAME string with any word string converted to its digit

# D: Input: string
#    Intermediate: hash to store conversions
#    Output: SAME string

# A: Store the conversions from string to digit in a hash (word as key)
#    Iterate through the hash keys
#      - use gsub! to mutate original strin

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  punctuation_arr = ['.', ',', '!', '?']
  words.split(' ').map do |word|
    punctuation = word.match(/[.?,!]$/) ? word[-1] : ''
    word_without_punctuation = word.chomp(punctuation)
    if DIGIT_HASH.keys.include?(word)
      DIGIT_HASH[word]
    elsif punctuation.include?(word[-1]) && DIGIT_HASH.keys.include?(word_without_punctuation)
      "#{DIGIT_HASH[word_without_punctuation]}."
    else
      word
    end
  end.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
# Write a method that takes a string with one or more space separated words and returns a hash
# that shows the number of words of different sizes.

# P & E: What constitutes a word? (any string of characters that do not include a space.)
#      ex:word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
#         word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
#         word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
#         word_sizes('') == {}

# D: Input: string
#    Intermediate: array of space separated words
#    Output: Hash with integers as keys and values

# A: Initialize an empty hash to hold the result
#    Split the given string by space into an `arr` local variable
#    Iterate through `arr` 
#    Check if current element size in (keys array)
#       - if so, increment value by 1
#       - If not set hash key to be current element size
#           - Set value to 1
#    Sort the hash by key
#    Return sorted hash

def word_sizes(str)
  arr = str.split(' ')
  result = {}
  
  arr.each do |el|
    if result.keys.include?(el.size)
      result[el.size] += 1
    else
      result[el.size] = 1
    end
  end
  result.sort_by { |key, _| key}.to_h
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

=begin
# The given solution is below.             1) Did not create a variable for the split string
                                           2) if- else statement inside of the block can just be one line 
                                           3) must use the default value form of initializing counts:
                                                counts = Hash.new(0)
                                                This forces any references to non-existing keys in counts to return 0.
                                                *Otherwise would return nil and cannot add 1 to nil

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end
=end
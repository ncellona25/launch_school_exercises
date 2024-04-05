# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size.
# For instance, the length of "it's" is 3, not 4.

# P & E: Same as last problem but with one big difference shown in the example

# D: input: string
#    intermediate: array of strings
#    Output: hash with integers as keys and values

# A: Same as letter_counter1.rb but have to check each element when iterating and remove special characters
#    Create array to check with capital and lowercase letters

def word_sizes(str)
  arr = str.split(' ')
  result = {}
  letters = ('A'..'Z').to_a + ('a'..'z').to_a               # Array of all letters

  arr.each do |el|
    characters = el.split('')                               # Initialize array of strings with each individual character
    
    removed_nonletter_chars = characters.select do |char|   # Select for letters only
      letters.include?(char)
    end
    
    result_str = removed_nonletter_chars.join               # Join array into str with only letters

    if result.keys.include?(result_str.size)
      result[result_str.size] += 1
    else
      result[result_str.size] = 1
    end
  end
  result.sort_by { |key, _| key}.to_h
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

=begin
# More concise solution
# clean_word = word.delete('^A-Za-z')     *Regex to remove all non-letters

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

=end

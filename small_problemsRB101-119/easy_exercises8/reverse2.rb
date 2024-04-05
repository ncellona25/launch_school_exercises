# Write a method that takes one argument, a string containing one or more words, and returns the given
# string with words that contain five or more characters reversed. Each string will consist of only
# letters and spaces. Spaces should be included only when more than one word is present.

# Examples:

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# D: input: string
#    output: same string with words with 5+ characters reversed

# A: Split the string by ' '
#    Initialize an empty result arr
#    Iterate through the split array
#       -if the word is 5+chars reverse word
#       -append the word to result array
#    rejoin and return
=begin
def reverse_words(str)
  arr = []

  str.split(' ').each do |word|
    word.reverse! if word.size >= 5
    arr << word
  end
  
  arr.join(' ')
end
=end

def reverse_words(str)
  str.split(' ').map do |word|
    if word.size >= 5
      word.reverse
    else
      word
    end
  end.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
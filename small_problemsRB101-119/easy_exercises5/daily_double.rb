# Write a method that takes a string argument and returns a new string that contains the value of the original
# string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.

# P & E: Self-explanatory

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# D: Input: string
#    Intermediate: array to iterate through
#    Output: string

# A: Initiate result str
#    Split given string into array of individual characters
#    Iterate through the array
#       - Remove all consecutive duplicates 
#           - Check current iterations equivalency with the next

def crunch(str)
  result = ''

  arr = str.chars

  arr.each_with_index do |char, index|
    char == arr[index + 1] ? next : result << char
  end
  result
end



p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

=begin
# Given solution iterates on the string itself but iteration and result has same logic

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end
=end

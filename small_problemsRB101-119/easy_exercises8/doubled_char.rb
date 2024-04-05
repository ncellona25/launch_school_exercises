# P & E: Write a method that takes a string, and returns a new string in which every character is doubled.

# Examples:

# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

# D: input: string
#    output: string with every character doubled

# A: Initialize an empty result string
#    Iterate through the given string using each_char
#       - Append to the result string the given character * 2
#    Return result string

def repeater(str)
  result = ''

  str.each_char { |char| result << char * 2 }
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
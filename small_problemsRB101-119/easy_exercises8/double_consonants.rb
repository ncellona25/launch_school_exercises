# P & E: Write a method that takes a string, and returns a new string in which every consonant character is doubled.
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# Examples:

# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

# D: input: string
# intermediate: another result string
# output: same string with consonants doubled

# A: Initialize an empty results string
#    Iterate through the given string using each_char
#       -check if each character is a consonant
#           -if so append (character * 2) to result
#       -if not append to result string as is
#    Return result string

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)
def is_consonant?(str)
  CONSONANTS.include?(str.downcase)
end

def double_consonants(str)
  result = ''
  str.each_char do |char|
    if is_consonant?(char)
      result << char * 2
    else
      result << char
    end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
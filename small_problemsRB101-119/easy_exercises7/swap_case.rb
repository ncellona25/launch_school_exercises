# Write a method that takes a string as an argument and returns a new string in which every
# uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version.
# All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# P & E: change every uppercase to lowercase and vice versa
#        everything else should remain the same
#        swapcase('CamelCase') == 'cAMELcASE'
#        swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# D: input: string
#    intermediate:
#    output: New string with every character swapcased

# A: Initialize result string ''
#    Iterate with each_char
#       - if-elsif-else statement
#         - check for upper and lowercase
#             - swapcase and then append to result string
#             - otherwise append character as is 
#    Return result

def swapcase(string)
  result = ''
  string.each_char do |char|
    if char.match?(/[A-Z]/)
      result << char.downcase
    elsif char.match(/[a-z]/)
      result << char.upcase
    else
      result << char
    end
  end
  result
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

=begin
#Given solution

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end
=end

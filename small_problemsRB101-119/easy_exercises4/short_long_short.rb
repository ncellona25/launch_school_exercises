#Write a method that takes two strings as arguments, determines the longest of the two strings, 
#and then returns the result of concatenating the shorter string, the longer string, 
#and the shorter string once again. You may assume that the strings are of different lengths.


# P & E: How to treat empty strings?
# will we ever receive input other than a string?
# how to treat case of characters
# will we ever receive input of more than two strings?

# D: input: given two strings     output: one string longer than both strings combined
# A: create an array to store both strings
#    Sort the array by size of strings
#    Assign `small` to first element and `big` to second element in array
#    Return string concatenation of `small` + `big` + `small`



def short_long_short(string1, string2)
  array = [string1, string2].sort { |a, b| a.size <=> b.size } #initialize array and sort by size
  small, big = array    #multiple assignment with elements in array
  small + big + small   #string concatenation and implicit return
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

=begin
#solution using if-else evaluation, can be shortened with ternary operator

def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end
=end
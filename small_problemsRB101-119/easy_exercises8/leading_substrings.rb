# P & E: Write a method that returns a list of all substrings of a string that start at the beginning of
# the original string. The return value should be arranged in order from shortest to longest substring.

#Examples:

#leading_substrings('abc') == ['a', 'ab', 'abc']
#leading_substrings('a') == ['a']
#leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# D: input: string
#    intermediate: array
#    output: array of strings

# A: Initialize an empty result array
#    Iterate through the string using #each_char.with_index
#       -append to the result array the string[0..index] at each iteration
#    Return result array

def leading_substrings(str)
  result = []
  str.each_char.with_index do |char, index|
    result << str[0..index]
  end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
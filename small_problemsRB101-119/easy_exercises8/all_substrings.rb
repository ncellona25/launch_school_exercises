# P & E: Write a method that returns a list of all substrings of a string. The returned list should
# be ordered by where in the string the substring begins. This means that all substrings that start
# at position 0 should come first, then all substrings that start at position 1, and so on. Since 
# multiple substrings will occur at each position, the substrings at a given position should be returned
# in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the previous exercise:

#Examples:

# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# D: input: string
#    intermediate: array
#    output: array of substrings

# A: Initialize empty results variable
#    set a count variable to reference 0
#    Initialize an outer loop with #loop
#       inside the loop, use count.upto(last char in string) as an innerloop
#       append each iteration to the result array
#    Increment count by 1 after each innerloop iteration
#    Break when count == str.size
#    Return result array


def substrings(str)
  result = []
  count = 0
  
  loop do
    count.upto(str.size - 1) do |index|
      result << str[count..index]
    end
    count += 1
    break if count >= str.size
  end
  result
end

p substrings('abcde')
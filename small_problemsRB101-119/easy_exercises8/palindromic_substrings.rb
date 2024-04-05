# P & E: Write a method that returns a list of all substrings of a string that are palindromic. That is,
# each substring must consist of the same sequence of characters forwards as it does backwards. The return
# value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes
# should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is,
# "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters
# are not palindromes

# Examples:

# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# D: input: string
#    intermediate: array
#    output: array of palindromic substrings

# A: Use previous exercise method to get all substrings into an array
#    Initialize an empty results array
#    Define a helper method is_palindrome? 
#       -consider all characters and pay attention to case
#       -"AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are
#       -single characters are not palindromes
#    Iterate through all substrings array
#       -Check if is_palindrome?
#       -If so append to result array
#       -else go to next iteration

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

def is_palindrome?(str)
  return false if str.size == 1
  return true if str.reverse == str
end

def palindromic_substrings(str)
  all_substrings = substrings(str)
  results = []

  all_substrings.each do |substring|
    results << substring if is_palindrome?(substring)
  end
  results
end
p palindromic_substrings('hello-madam-did-madam-goodbye')
p palindromic_substrings('knitting cassettes')
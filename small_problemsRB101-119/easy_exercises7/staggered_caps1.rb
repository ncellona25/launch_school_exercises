#Write a method that takes a String as an argument, and returns a new String that contains the original value
# using a staggered capitalization scheme in which every other character is capitalized, and the remaining
# characters are lowercase. Characters that are not letters should not be changed, but count as characters
# when switching between upper and lowercase.

# P & E: Take a string, return a NEW string.
#        New string must have staggered capitalization (map through with index?)

# D: input: string
#    intermediate: could work with an array
#    Output: return a new string

# A: Split the string by each character
#    Map through the split string
#       - Check in the block if index is odd(with_index)
#         - if index is odd then downcase the character
#         - else upcase the character
#       - Join the return of map with ('')

def staggered_case(str)
  str.split('').map.with_index do |char, index|
    if index.odd?
      char.downcase
    else
      char.upcase
    end
  end.join('')
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

=begin
#Given solution

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end
=end
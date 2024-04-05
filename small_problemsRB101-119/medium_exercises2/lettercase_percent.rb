# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters,
# as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of
# characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters,
# and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# P & E: Take a string with all type of characters
#        Return a hash with percent of lowercase, uppercase, and neither

# ex:
# letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# D: input: string
#    intermediate: array for storing lowercase?
#    output: hash with floats representing percents

# A: Initialize a variable to store the string size
#    Initialize a counter for lowercase, uppercase, and neither
#       - set each to zero
#    Iterate through the string
#       - check if each char is upper, lower, or neither
#       - increment the necessary counter
#    Create a hash
#       - values are count / string size

def letter_percentages(str)
  total_length = str.size
  lower_count = 0
  upper_count = 0
  neither_count = 0

  str.chars.each do |char|
    if ('a'..'z').to_a.include?(char)
      lower_count += 1
    elsif ('A'..'Z').to_a.include?(char)
      upper_count += 1 
    else
      neither_count += 1
    end
  end

  letter_hash = {}
  letter_hash[:lowercase] = ((lower_count.to_f / total_length) * 100).round(1)
  letter_hash[:uppercase] = ((upper_count.to_f / total_length) * 100).round(1)
  letter_hash[:neither] = ((neither_count.to_f / total_length) * 100).round(1)
  letter_hash
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')
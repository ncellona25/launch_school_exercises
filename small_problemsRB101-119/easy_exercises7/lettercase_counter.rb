# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number
# of characters in the string that are lowercase letters, one represents the number of characters that are
# uppercase letters, and one represents the number of characters that are neither.

# P & E: takes a string and returns a hash with three different entries
#         - one entry is number of characters that are lowercase letters
#         - next is number of uppercase letters
#         - last is number of characters that are not letters

# D: input: string
#    intermediate: nested array
#    output: hash w/ 3 entries

# A: Iterate through the string using each_char
#    Initialize a nested array with three empty arrays
#       - Initialize an if-elsif-else statement
#           - if branch checks if character is lowercase and is a letter
#              - if so append to result arr at index 0
#           - elsif checks for uppercase and is a letter
#              - appends to index 1 if true
#           - else 
#              - appends to last index
#   Convert nested array to hash

def is_a_letter?(str)
  str.match?(/[a-zA-Z]/)
end

def letter_case_count(string)
  result_arr = [[], [], []]

  string.each_char do |char|
    if char.downcase == char && is_a_letter?(char)
      result_arr[0] << char
    elsif char.upcase == char && is_a_letter?(char)
      result_arr[1] << char
    else 
      result_arr[-1] << char
    end
  end
  count_hash = {}
  count_hash[:lowercase] = result_arr[0].size
  count_hash[:uppercase] = result_arr[1].size
  count_hash[:neither] = result_arr[-1].size
  count_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

=begin
#2 given solutions much more concise and refactored
UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

#Solution with regex
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end
=end
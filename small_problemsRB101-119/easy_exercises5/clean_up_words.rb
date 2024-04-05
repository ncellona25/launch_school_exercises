# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write
# a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more
# non-alphabetic characters occur in a row, you should only have one space in the result (the result should never
# have consecutive spaces).



# P & E:    How to get all non-alphabetic characters into an array?  **Count space as an instance of non-alphabetic
#           How to account for back to back special characters when iterating through?  (next w/ a conditional)

#  cleanup("---what's my +*& line?") == ' what s my line '

#D:         input: string of characters
#           intermediate: array
#           output: cleaned string

#A          Split the string by character and store in an `array` variable
#           Iterate through the array
#              -Initialize `result` string
#              - check for match with non-alphabetic characters
#                 - if matches, check for match with next character
#                   -skip iteration
#                 - if not then replace with space ' '
#              - when it is alphabetic
#                 - append to `result`

def cleanup(string)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
  result = ''
  array = string.chars

  array.each_with_index do |char, index|
    if alphabet.include?(char)
      result << char
    else
      next if alphabet.include?(array[index]) == alphabet.include?(array[index + 1])  #checks if given character is in alphabet and the next (returns true if both are not in alphabet)
      result << ' '
    end
  end 
  result
end


p cleanup("---what's my +*& line?")
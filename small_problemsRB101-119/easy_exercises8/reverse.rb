# P & E: Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# Examples:

# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# D: input: string
#    intermediate: array
#    output: NEW string with words reversed

# A: Initialize a variable to store an array (split the given string by space)
#    Initialize 'reversed_arr' to store return of calling map on the array above
#       -call map with a block 

def reverse_sentence(str)
  arr = str.split(" ")
  count = 0
  reversed_arr = arr.map do |word|
    count -= 1
    arr[count]
  end
  # Can also just call #reverse on an array 
  reversed_arr.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains
# all elements from both Array arguments, with the elements taken in alternation.
# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# P & E: Takes in two arrays 
#        Returns one single array with all elements from both
#        Alternate taking elements from each array
#        interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# D: Input: 2 arrays
#    intermediate: array 
#    output: array with alternating elements from each array

# A: Initialize index counter variable starting at zero
#    Initialize result array (empty)
#    Initiate a loop
#       - take each element from the arrays and append them to result arr using index
#       - increment by one to move on to next index
#       - break when index >= arr.size
#    Return result arr

def interleave(arr1, arr2)
  index = 0
  result = []

  loop do
    result << arr1[index]
    result << arr2[index]
    index += 1
    break if index >= arr1.size
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# I used a basic loop structure but each_with_index makes the code more concise
=begin
##each_with_index to get values and index numbers for array1, then use the index number to access the
# corresponding element in array2.

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end
=end
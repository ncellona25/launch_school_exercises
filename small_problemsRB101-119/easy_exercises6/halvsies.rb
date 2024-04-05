# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain
# the first half and second half of the original Array, respectively. If the original array contains an odd number of
# elements, the middle element should be placed in the first half Array.

# P & E: Splits the argument array into a pair of nested arrays.  If odd number of elements, middle element 
#        goes to first nested array.  (Partition stands out here using index as return? Not sure what it returns)

# D: Input: array
#    Output: nested array

# A: Call partition on the array (check it's return value)
#       - Call it with_index if possible
#       - have selection criteria be index< (arr.size / 2) + 1 to account for middle element 

def halvsies(arr)
  arr.partition.with_index do |el, index|
    index < (arr.size / 2.0)
  end
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([1, 5, 2, 4, 3, 7, 9, 11, 13, 15, 17])
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

=begin
# Given solution uses array slicing
def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end
=end

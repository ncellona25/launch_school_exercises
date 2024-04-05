# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the
# argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in
# the original Arrays.

# P & E: merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# D: input: two arrays 
#    output: one array with unique values from each array

# A: 

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end
p merge([1, 3, 5], [3, 6, 9]) 

=begin
# Given solution uses method Array#|. This is a method that gives the set union of two arrays

def merge(array_1, array_2)
  array_1 | array_2
end

=end

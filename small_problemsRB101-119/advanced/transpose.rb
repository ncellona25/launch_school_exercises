# A 3 x 3 matrix can be represented by an Array of Arrays in which the main Array and all
# of the sub-Arrays has 3 elements. For example:

# 1  5  8
# 4  7  2
# 3  9  6

# can be described by the Array of Arrays:

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]


# The transpose of a 3 x 3 matrix is the matrix that results from exchanging the columns and rows
# of the original matrix. For example, the transposition of the array shown above is:

# 1  4  3
# 5  7  9
# 8  2  6

# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of
# the original matrix. Note that there is a Array#transpose method that does this -- you may not 
# use it for this exercise. You also are not allowed to use the Matrix class from the standard library.
# Your task is to do this yourself.

# ** Do NOT modify the original array (return a new matrix or array)

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# This program should print "true" twice.

# Problem: Return NEW array that is transposed
# 1st nested array has all elements at index 0
# 2nd -------------------------------  index 1
# 3rd -------------------------------- index 2

# Algorithm: 
# Initialize `results` = [] (RESULTS)
# We want to iterate through the given matrix (matrix.size.times) and the parameter can represent the index
# - initialize `temp_array` at beginning of each iteration
#     - if the matrix is 4x4 we iterate through 4 times 
#   - At each iteration (specific subarray), append to `temp_array` << subarray[parameter]
# - After iterating through all subarrays append to results the `temp_array`
# Return `results`

def transpose(arr)
  results = []
  
  arr.size.times do |idx|
    temp_array = []
    arr.each do |subarr|
      temp_array << subarr[idx]
    end
    results << temp_array
  end
  results
end

# Tight solution
# Iterates through a range representing the indices
# Within that range (which also represents the matrix size) iteration, maps through the given array to return a
# 3 element array with every element at that index
# def transpose(matrix)
#   0.upto(matrix.size - 1).map do |col|
#     matrix.map do |row|
#       row[col]
#     end
#   end
# end


# def transpose (arr)
#   arr.map.with_index { |row, r| row.map.with_index { |col, c| matrix[c][r] } }
# end
# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

new_matrix = transpose(matrix)
p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
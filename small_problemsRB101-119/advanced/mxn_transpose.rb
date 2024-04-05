# In the previous exercise, you wrote a method to transpose a 3 x 3 matrix as represented by a ruby Array of Arrays.

# Matrix transposes aren't limited to 3 x 3 matrices, or even square matrices. Any matrix can be transposed
# by simply switching columns with rows.

# Modify your transpose method from the previous exercise so it works with any matrix with at least 1 row and 1 column.

# Examples:

# transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]         1 row w/ 4 columns   =>  4 rows w/ 1 column
# transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]         4 rows w/ 1 column  =>  1 row w/ 4 columns
# transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==     3 rows w/ 5 columns   =>  5 rows w 3 columns
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# transpose([[1]]) == [[1]]       1 row w/ 1 column

# Thoughts:
# Initial arr.size becomes the size of each subarray in the output
#     => The number of rows becomes the # of columns
# Result is always a nested array
# So it is the size of the subarr that determines the number of elements in the output

# Algorithm
# Initialize an empty `results` array
# Acquire the size of the subarray from the argument
#   - map through the argument
#   - Have the block return the size of the subarray
#   - Use index reference to get the size from the array
# Begin an iterator that goes through subarray_size times (parameter represents the index)
#   - Initialize an empty array `new_row` which will hold all elements at that current index (new row)
#   - Iterate through the given array 
#       - append to `new_row` the elements from each subarray at that idx
#   - Once done iterating through all subarrays append new_row to the results arr
# Return results

def transpose (arr)
  results = []
  subarr_size = arr.map { |subarr| subarr.size }[0]
  subarr_size.times do |idx|
    new_row = []
    arr.each do |subarr|
      new_row << subarr[idx]
    end
    results << new_row
  end
  results
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
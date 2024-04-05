# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# A 90-degree rotation of a matrix produces a new matrix in which each side of the matrix is rotated
# clockwise by 90 degrees. For example, the 90-degree rotation of the matrix shown above is:

# 3  4  1       [2, 0] [1, 0] [0, 0]
# 9  7  5       [2, 1] [1, 1] [0, 1]
# 6  2  8       [2, 2] [1, 2] [0, 2]

# A 90 degree rotation of a non-square matrix is similar. For example, the rotation of:

# 3  4  1
# 9  7  5

# is:

# 9  3      [1, 0] , [0, 0]
# 7  4      [1, 1] , [0, 1]
# 5  1      [1, 2] , [0, 2]

# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]

# is :

# 5 3   [1,0] [0,0]
# 1 7   [1,1] [0,1]
# 0 4   [1,2] [0,2]
# 8 2   [1,3] [0,3]

# Problem: 
# Write a method that takes any arbitrary matrix and rotates it 90degrees clockwise
# First row is all element at index 0 but starting from the last row down to first
# Second row is all elements at index 1 again starting from last row down to first
# Last row is all elements at index 2 again starting from last row down to first
#   - When creating a new row we always start at the last row index down to 0
#   - At each iteration we get all elements at index 0 up to the max (ex ;[2, 0] [1, 0] [0, 0] => [2, 1] [1, 1] [0, 1])

# Algorithm: 
# Initialize rotated_arr = []
# Find `row_size`
# Find `col_size` = arr.size
# Iterate through from 0 upto row.size - 1 |idx2|
#   Initialize `new_row`
#   Inside the iteration go down from col_size - 1 to 0  |idx1|
#       - append to `new_row` arr[idx1][idx2]
#   - At end of each iteration append to rotated_arr the `new_row`
# Return rotated_arr

# **Given solution using map
# def rotate90(matrix)
#   result = []
#   (0..2).each do |column_index|
#     new_row = (0..2).map do |row_index|
#       matrix[row_index][column_index]
#     end
#     result << new_row.reverse
#   end
#   result
# end

def rotate90(arr)
  rotated_arr = []
  row_size = arr[0].size
  col_size = arr.size
  0.upto(row_size - 1) do |idx2|
    new_row = []
    (col_size - 1).downto(0) do |idx1|
      new_row << arr[idx1][idx2]
    end
    rotated_arr << new_row
  end
  rotated_arr
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

p new_matrix1 = rotate90(matrix1)
p new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))
p new_matrix3 == matrix2
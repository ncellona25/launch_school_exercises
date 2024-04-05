# P & E: Takes an array and rotates it by moving first element to end
#        Should return a new array and not modify the original
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']
# 
# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]

# D: input: array
#    output: NEW array

# A: Initialize a new empty result arr variable
#    Append a slice of the beginning elements into result arr    
#    Append the first element into result array at the last position
#    flatten result arr, and return

def rotate_array(arr)
  result = []

  result << arr[1, (arr.size - 1)] << arr[0]
  result.flatten
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_integers(num)
  rotate_array(num.to_s.chars).join.to_i
end

p rotate_integers(1234)
p rotate_string("Nicolas")

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
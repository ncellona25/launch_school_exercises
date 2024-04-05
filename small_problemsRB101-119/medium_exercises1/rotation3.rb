def rotate_array(arr)
  result = []

  result << arr[1, (arr.size - 1)] << arr[0]
  result.flatten
end


=begin
def max_rotation(num)
  digits_arr = num.to_s.chars       #get array of digits
  num_digits = digits_arr.size      #get the number of digits
  return num if num_digits == 1

  first_rotation = rotate_array(digits_arr).join.to_i
  return first_rotation if num_digits == 2
  
  right_digits_counter = 1          #Initialize variable to help determine # of digits to rotate
  previous_rotation = first_rotation

  (num_digits - 2).times do
    current_rotation = rotate_right_most(previous_rotation, (num_digits - right_digits_counter))
    right_digits_counter += 1
    previous_rotation = current_rotation
  end
    
  previous_rotation
end
=end


#My solution is not as concise as the given solution

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_right_most(number, n)
  end
  number
end

p max_rotation(735291)
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
# P & E: To be valid, sum of all the angles must be 180 degrees and all angles must be > 0
#        Takes three integers representing the angles of triangle
#           - Returns the proper symbol
# You may assume integer valued angles so you don't have to worry about floating point errors.
# You may also assume that the arguments are specified in degrees.

# D: input: three integers
#    intermediate: array 
#    output: symbol

# A: Store the three integers into an array
#    Check for the invalid conditions using the array
#       - return :invalid if so
#    Check for type of triangle
#       - angle > 120 == :obtuse
#       - angle == 90 is :right
#       - all angles < 90 :acute

def triangle(ang1, ang2, ang3)
  angle_arr = [ang1, ang2, ang3]
  return :invalid if angle_arr.sum != 180 || angle_arr.include?(0)

  if angle_arr.any? { |ang| ang >= 120 }
    :obtuse
  elsif angle_arr.all? { |ang| ang < 90}
    :acute
  elsif angle_arr.any? { |ang| ang == 90 }
    :right
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
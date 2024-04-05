#To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the
# longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied,
# the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral,
# :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# P & E: Takes in three integers(greater than zero) representing the sides of the triangle
#         - return equilateral if all integers are the same, scalene if all different, and isosceles
#         - The sum of the two shortest sides must be greater than the length of the longest

# D: input: three integers
#    intermediate: array for sorting and comparison
#    output: a symbol

# A: Take the three integers and store them in a SORTED array
#       - Check the array to make sure that none of the elements are zero
#            - return :invalid if so
#       - Check the array to see if the first two elements added are greater than the last element
#            - return :invalid if so
#    Now must check the sides 
#       - all three equal == :equilateral
#       - two sides equal == :isosceles
#       - none equal == :scalene

def triangle(side1, side2, side3)
  arr = [side1, side2, side3].sort
  return :invalid unless arr.none? { |side| side == 0 }
  return :invalid if arr[0] + arr[1] < arr[-1]

  if side1 == side2 && side2 == side3
    :equilateral
  elsif side1 == side2 || side2 == side3 || side1 == side3
    :isosceles
  else
    :scalene
  end
end

p triangle(7, 4, 2)

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

=begin
#Given solution included the invalid checks into the case statement

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side >= sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end
=end

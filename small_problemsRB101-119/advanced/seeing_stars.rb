# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is
# supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

# Examples

# star(7)

# *  *  *   pos 1, 4, 7
#  * * *    2, 4, 6
#   ***     3, 4, 5
# *******   all positions
#   ***     3, 4, 5
#  * * *    2, 4, 6
# *  *  *   1, 4, 7

# star(9)

# *   *   * 1, 5, 9
#  *  *  *  2, 5, 8
#   * * *   3, 5, 7
#    ***    4, 5, 6
# ********* all positions
#    ***    4, 5, 6
#   * * *   3, 5, 7
#  *  *  *  2, 5, 8
# *   *   * 1, 5, 9


# Problem
# It seems like on the left side the star is first placed at 1, 1+1, 1+2, and then the row where all stars are there
#   - right side starts from argument down to center + 1
# Then the stars descend from (center -1) back down to 1 while the other side begins to rise from (center + 1)
# ** It seems important to find the center point since it is always on and can place stars from that point
#     - for 9 it is 5
#     - for 7 it is 4
#     - for 11 it is 6
#     - for 13 it is 7

# input: integer representing the number of stars
# intermediate: array that we can map through
# output: stars in grid fashion

# Algorithm:
# First, find the center point of the grid (center point in both x and y axis is the same)
#   - center count starting from 0 because we are working with array indexes
#     - for 9 it is 4
#     - for 7 it is 3
#     - for 11 it is 5
#     - for 13 it is 6

# Initialize a beginning_idx set to 0
# Initialize a end_idx set to size of the array (argument) - 1
# Initialize `stars` array = []
#     - argument times do append a * to the `stars` array
# Now begin a loop
#   - argument times do loop will be fine.  The parameter will indicate the current row 
#   - *if current row is == center point then output `stars` as is in string format and go next
#   - we'll want to output the return value of calling map on `stars` joined together
#       - so call map on `stars` with index and pass in a block with an if-else
#       - if current index == beginning_idx || center || end_idx
#         - keep as a star
#       - else
#         - replace with a space
#     - call join after the end statement
#    - increment the beginning_idx and end_idx

def stars(num)
  beginning_idx = 0
  max_idx = num - 1
  center = (num - 1) / 2
  stars = []

  num.times { |num| stars << '*' }
  num.times do |row|
    if row == center
      puts stars.join
    elsif row < center
      puts (stars.map.with_index do |star, idx|
        if idx == beginning_idx || idx == center || idx == max_idx
          star
        else
          ' '
        end
      end.join)
      beginning_idx += 1
      max_idx -= 1
    elsif row > center
      beginning_idx -= 1
      max_idx += 1
      puts (stars.map.with_index do |star, idx|
        if idx == beginning_idx || idx == center || idx == max_idx
          star
        else
          ' '
        end
      end.join)
    end
  end
end

# star(9)
# *   *   * 1, 5, 9   b_idx = 0, max = 8
#  *  *  *  2, 5, 8   b_idx = 1, max = 7
#   * * *   3, 5, 7   b_idx = 2, max = 6
#    ***    4, 5, 6   b_idx = 3, max = 5
# ********* all positions   ROW 4 == center  b_idx = 4, max = 4
#    ***    4, 5, 6         row 5 b_idx =3, max_idx = 5
#   * * *   3, 5, 7         ROW 6 b_idx =2, max_idx = 6
#  *  *  *  2, 5, 8
# *   *   * 1, 5, 9
stars(7)
stars(9)
stars(11)

# Took about an hour after solving bug ~ 15-20 mins
# Bug where after center row, only one star was shown because all idx counters were == center
#   - moving the incrementers to the top of second half loop solved it


# Given solution below utilizes distance from center to calculate the number of spaces between '*'
# it then joins the stars from an array using the number of spaces as a delimeter

# def print_row(grid_size, distance_from_center)
#   number_of_spaces = distance_from_center - 1
#   spaces = ' ' * number_of_spaces
#   output = Array.new(3, '*').join(spaces)
#   puts output.center(grid_size)
# end

# def star(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(1) { |distance| print_row(grid_size, distance) }
#   puts '*' * grid_size
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end
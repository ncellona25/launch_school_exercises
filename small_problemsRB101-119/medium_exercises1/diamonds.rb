# P & E: Want to create a 4 pointed diamond given an integer
#        The integer represents the max width of the diamond
#           - Also represents the number of rows
#        Integer always odd

# D: Input: integer(represents width and # rows)
#    Output: Diamond made with *

# A: Create an array from one to num
#    Iterate through the array selecting for odd nums only
#    Duplicate the array except for the actual num
#    Iterate through the duplicated array
#       - output '*' * num

def diamond(num)
  numbers = (1..num).to_a
  odd_nums = numbers.select { |num| num.odd? }
  duplicated_odd_nums = odd_nums + odd_nums[0..-2].reverse

  duplicated_odd_nums.each { |number| puts(('*' * number).center(num)) }
end
diamond(1)
diamond(3)
diamond(5)
diamond(9)
diamond(15)
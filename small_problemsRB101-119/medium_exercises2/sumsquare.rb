# P & E: Method that computes the difference between 
#        (the square, of the sum of the first n positive integers)
#        (the sum of the squares of the first n positive integers)

# D: input: integer
#    output: integer

def sum_square_difference(num)
  square_of_sum = ((1..num).sum)**2
  sum_of_squares = (1..num).to_a.map { |num| num**2}.sum

  result = square_of_sum - sum_of_squares
end



p sum_square_difference(9)
p sum_square_difference(3) == 22
p    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
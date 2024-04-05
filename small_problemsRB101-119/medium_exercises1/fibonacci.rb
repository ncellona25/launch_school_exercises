# The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of
# the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 
# 2 + 3 = 5, and so on. In mathematical terms:

# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2


# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.
# Examples:

# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765

# Problem
# Want to create a method that computes and returns the (nth - given integer) fibonacci number

# input: integer
# intermediate: array of Fibonacci numbers?
# output: the nth fibonacci num

# Algorithm: 
# Return 1 if num <= 2 since the first two numbers in the sequence are 1
# call fibonacci for (num-1) + fibonacci(num-2)
# Return the result for adding the returns from the step above

def fibonacci(num)
  return 1 if num <= 2
  fibonacci(num - 1) + fibonacci(num - 2)
end

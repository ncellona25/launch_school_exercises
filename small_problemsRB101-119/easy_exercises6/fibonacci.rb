# P & E: Need to come up with a way to store the fibonacci series up until the length of the integer is reached
#        find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
#        find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
#        find_fibonacci_index_by_length(10) == 45
#        find_fibonacci_index_by_length(100) == 476
#        find_fibonacci_index_by_length(1000) == 4782
#        find_fibonacci_index_by_length(10000) == 47847

# D: input: integer
#    intermediate: array
#    output: integer

# A: Define function to take an integer which resembles the length of the last integer in the sequence
#    Initialize a fibonacci array with the integers 1, 1, 2, 3, 5, 8 (since given integer is always at least 2)
#    Begin a loop
#       - Add the last two numbers in the array for each iteration
#       - Append the result to the fibonacci array
#       - Go to next iteration
#       - Break when the last integer in the array has a size == given integer
#    Return the size of the array

def find_fibonacci_index_by_length(last_length)
  fibonacci = [1, 1]
  index = 2
  loop do
    last_two_sum = fibonacci[-1] + fibonacci[-2]
    index += 1
    fibonacci << last_two_sum
    fibonacci.shift
    break if fibonacci.last.to_s.length == last_length
  end
  index
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

# ~ 10 - 15mins to complete w/ refactorization

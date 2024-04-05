# In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers.
# This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

# Examples:

# fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# fibonacci_last(123456789) # -> 4

# Algorithm:
# take the procedural fibonacci from the last exercise
# Return the last digit from the return of the procedural method

# def fibonacci_last(num)
#   return 1 if num == 1 || num == 2
#   arr = [1, 1]
#   while arr.size < num
#     arr << arr[-2] + arr[-1]
#   end
#   arr.last.to_s[-1].to_i
# end
# Above solution stops on the fifth test case because it stores every digit

# def fibonacci_last(num)
#   first, last = [1, 1]
#   (3..num).each do |num|
#     first, last = [last, first+last]
#   end
#   last.to_s[-1].to_i
# end
# This solution above is able to do the test cases but takes a long time for the last two

#Given solution below is much faster and gets through the test cases quickly
# It does this by using % 10 to store the last digit only
def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
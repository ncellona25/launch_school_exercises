# In the previous exercise, we developed a recursive solution to calculating the nth Fibonacci number.
# In a language that is not optimized for recursion, some (not all) recursive methods can be extremely
# slow and require massive quantities of memory and/or stack space.

# Ruby does a reasonably good job of handling recursion, but it isn't designed for heavy recursion; as a result,
# the Fibonacci solution is only useful up to about fibonacci(40). With higher values of nth, the recursive solution
# is impractical. (Our tail recursive solution did much better, but even that failed at around fibonacci(8200).)

# Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

# Rewrite your recursive fibonacci method so that it computes its results without recursion.

#Examples:

# fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) 

# input: integer nth fibonacci
# intermediate: array holding the last two values in the sequence
# output: integer

# Algorithm:
# Initialize a two element array and set it to reference `first` and `last` with both elements = 1
# Then iterate from 3 to the given integer
#   - at each iteration update first and last 
#   - first = last and last = last + first
# Return the last element after all iterations are done

# def fibonacci(num)
#   first, last = [1, 1]
#   (3..num).each do |num|
#     first, last = [last, last+first]
#   end
#   last
# end

def fibonacci(num)
  return 1 if num == 1 || num == 2
  arr = [1, 1]
  while arr.size < num
    arr << arr[-2] + arr[-1]
  end
  arr.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) 
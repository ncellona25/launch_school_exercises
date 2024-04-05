# The following code:

def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# is expected to print:

# []
# [21]
# [9, 16]
# [25, 36, 49]

# it actually prints:
# []
# nil
# nil
# nil

# However, it does not. Obviously, there is a bug. Find and fix the bug, then explain why the buggy
# program printed the results it did.

# The bug was on line 6 where the elsif branch had no conditional statement
#   - I added in array.size > 1
# String#upcase! is a destructive method, so why does this code print HEY you instead of HEY YOU?
# Modify the code so that it produces the expected output.

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'
# The code does not work as expected because the String#upcase! call inside the block mutates each element
# inside the resulting array from the String#chars method call. Once chars is called on the argument, 
# the array returned is completely separate from the original string.  Instead, calling `upcase!` on the 
# argument directly will mutate it.


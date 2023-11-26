#Given a string of words separated by spaces, write a method that takes this string of words and
#returns a string in which the first and last letters of every word are swapped.

#You may assume that every word contains at least one letter, and that the string will always 
#contain at least one word. You may also assume that each string contains nothing but words and 
#spaces.

# P & E: 'word' is vaguely defined (in this case seems any group of characters acts as a word)
#        Rest of my questions answered by given assumptions

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# D: input: string
#    intermediate: array may be helpful
#    output: string

# A: Split the given string by spaces
#    Swap the first and last index of the separated strings
#    Join them together into one string and implicitly return

def swap(str)
  arr = str.split(' ')

  arr.each do |val|
    first = val[0]
    last = val[-1]

    val[0] = last
    val[-1] = first
  end
  arr.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
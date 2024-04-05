# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that do not use both letters from any given 
# block. Each letter in each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks,
# false otherwise.

# P & E: Can only use one letter per block
#        Seems like it is not case sensitive (j == J)
# ex
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# D: input: string
#    intermediate: hash to store the blocks or nested array
#    output: boolean

# A: Initialize a nested array to store the 2 element blocks
#    To account for case, upcase the given string to work with it
#    Iterate through the created nested array
#       - Check each blocks count compared to the upcased string


BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_check?(str)
  upcased_str = str.upcase
  BLOCKS.none? { |block| upcased_str.count(block) >= 2}
end

p block_check?('BATCH') == true
p block_check?('BUTCH') == false
p block_check?('jest') == true
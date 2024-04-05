# Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly
# balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# P & E: Want to have the same amount of '(' and  ')'
#        Also cannot start with ')' before '('

#  balanced?('What (is) this?') == true
#  balanced?('What is) this?') == false
#  balanced?('What (is this?') == false
#  balanced?('((What) (is this))?') == true
#  balanced?('((What)) (is this))?') == false
#  balanced?('Hey!') == true
#  balanced?(')Hey!(') == false
#  balanced?('What ((is))) up(') == false
#  balanced?('What ())(is() up') == false

# D: input: string with a number of parentheses
#    intermediate: array to iterate through
#    output: boolean

# A: Initialize a parentheses counter (should be zero at end)
#       - iterate through each character in the string
#       - if '(' increment the counter by 1
#       - if ')' subtract by 1
#       - break out of the loop if counter goes below zero
#     Return true if counter is zero
#     False otherwise

def balanced?(str)
  parentheses_count = 0
  str.chars.each do |char|
    if char == '('
      parentheses_count += 1
    elsif char == ')'
      parentheses_count -= 1
    end
    break if parentheses_count < 0
  end
  
  parentheses_count.zero?
end

p  balanced?('What (is) this?') == true
p  balanced?('What is) this?') == false
p  balanced?('What (is this?') == false
p  balanced?('((What) (is this))?') == true
p  balanced?('((What)) (is this))?') == false
p  balanced?('Hey!') == true
p  balanced?(')Hey!(') == false
p  balanced?('What ((is))) up(') == false
p  balanced?('What ())(is() up') == false
# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether
# it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the
# return value; they just don't count when toggling the desired case.

# P & E: Same idea as last problem
#        But this time must ignore the non-alphabet characters
#           - still included but not part of stagger caps

def stagger_caps(str)
  result = ''
  upper_case = true
  str.chars.each do |char|
    if char =~ /[^A-Za-z]/
      result << char
    elsif upper_case
      result << char.upcase
      upper_case = !upper_case
    else
      result << char.downcase
      upper_case = !upper_case    #Only change state of boolean if it is a character
    end
  end
  result
end

p stagger_caps('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p stagger_caps('ALL CAPS') == 'AlL cApS'
p stagger_caps('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
'''def xor?(bool1, bool2)
  if bool1 == true && bool2 == false
    return true
  elsif bool2 == true && bool1 == false
    return true
  else
    return false
  end
end'''

#much shorter method
def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end


puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

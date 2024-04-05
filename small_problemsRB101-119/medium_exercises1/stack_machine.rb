def minilang(commands)
  stack = []
  register = 0
  commands.split.each do |token|
    case token
    when 'ADD'    then register += stack.pop
    when 'DIV'    then register /= stack.pop
    when 'MULT'   then register *= stack.pop
    when 'MOD'    then register %= stack.pop
    when 'SUB'    then register -= stack.pop
    when 'PUSH'   then stack.push(register)
    when 'POP'    then register = stack.pop
    when 'PRINT'  then puts register
    else               register = token.to_i
    end
  end
end
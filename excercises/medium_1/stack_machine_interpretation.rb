def minilang(string)
  string = string.split
  stack = []
  register = 0

  string.each do |n|
    case n
    when 'PUSH'  then stack << register
    when 'POP'   then register = stack.pop.to_i
    when 'ADD'   then register += stack.pop.to_i
    when 'SUB'   then register -= stack.pop.to_i
    when 'MULT'  then register *= stack.pop.to_i
    when 'DIV'   then register = register / stack.pop.to_i
    when 'MOD'   then register = register % stack.pop.to_i
    when 'PRINT' then puts register
    else              register = n.to_i
    end
  end
end

minilang('6 PUSH')

def max_rotation(number)
  number = number.to_s.chars
  index = 0

  loop do
    first, second = number.slice(0, index), number.slice(index, number.size)
    number = first + second.rotate
    
    index += 1
    break if index == number.size
  end
  number.join.to_i
end

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15
max_rotation(8_703_529_146) == 7_321_609_845

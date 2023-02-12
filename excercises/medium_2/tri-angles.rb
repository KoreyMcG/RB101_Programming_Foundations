def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  return :invalid if sides.include?(0) || sides.sum != 180

  case
  when sides.one? { |num| num > 90 } then :obtuse
  when sides.one? { |num| num == 90 } then :right
  when sides.all? { |num| num < 90 } then :acute
  end
end

triangle(60, 70, 50)
triangle(30, 90, 60)
triangle(120, 50, 10)
triangle(0, 90, 90)
triangle(50, 50, 50)

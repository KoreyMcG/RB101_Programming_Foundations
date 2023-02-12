def triangle(side1, side2, side3)
  array = [side1, side2, side3].sort

  case
  when array[0] + array[1] <= array[2] then :invalid
  when array.uniq.size == 1            then :equilateral
  when array.uniq.size == 2            then :isosceles
  when array.uniq.size == 3            then :scalene
  end
end

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

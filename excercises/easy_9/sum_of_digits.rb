def sum(integer)
  integer.to_s.chars.map(&:to_i).sum
end

sum(23)
sum(496)
sum(123_456_789)

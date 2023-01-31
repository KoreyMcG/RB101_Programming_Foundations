def twice(number)
  array = number.to_s.chars
  half = array.size / 2
  first, second = array.partition.with_index { |_, i| i < half}.map(&:join)
  first, second = first.to_i, second.to_i
  first == second ? number : number * 2
end

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

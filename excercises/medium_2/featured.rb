def featured(num)
  unique_num = num / 7 * 7

  loop do
    unique_num.even? ? unique_num += 7 : unique_num += 14

    next if unique_num.even?
    return unique_num if unique_num.to_s.chars.uniq == unique_num.to_s.chars
    break if num >= 9876543210
  end

  'There is no possible number that fulfills those requirements.'
end

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999)

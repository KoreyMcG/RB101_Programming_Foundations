def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

digit_list(12345)
digit_list(7)
digit_list(375290)
digit_list(444)

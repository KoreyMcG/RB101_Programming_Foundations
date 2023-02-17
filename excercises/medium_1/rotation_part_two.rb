#  def rotate_rightmost_digits(number, n)
#    (number.to_s[0..-n - 1] + number.to_s[-n..-1].chars.rotate.join).to_i
#  end

def rotate_rightmost_digits(number, n)
  n = 10**n
  number.divmod(n).map.with_index do |num, i|
    i == 1 ? num.to_s.chars.rotate.join.to_i : num
  end.join.to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

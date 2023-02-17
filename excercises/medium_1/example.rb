def find_prime_numbers(start_num, end_num)
  prime_numbers = []                           # => []
  start_num.upto(end_num) do |number|          # => 3
    prime_numbers << number if prime?(number)  # => [3], nil, [3, 5], nil, [3, 5, 7], nil, nil, nil
  end                                          # => 3
  prime_numbers                                # => [3, 5, 7]
end                                            # => :find_prime_numbers

def prime?(number)
  (2..(number - 1)).each do |divisor|      # => 2..2, 2..3, 2..4, 2..5, 2..6, 2..7, 2..8, 2..9
    return false if number % divisor == 0  # => false, true, false, false, false, true, false, false, false, false, false, true, false, true, true
  end                                      # => 2..2, 2..4, 2..6
end                                        # => :prime?

find_prime_numbers(3, 10)  # => [3, 5, 7]

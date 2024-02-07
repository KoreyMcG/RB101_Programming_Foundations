def is_prime(n)
  return false if n == 1
  (2...n).each { |num| return false if n % num == 0 }
  true
end

puts(is_prime(1) == false)
puts(is_prime(2) == true)
puts(is_prime(3) == true)
puts(is_prime(4) == false)
puts(is_prime(5) == true)
puts(is_prime(6) == false)
puts(is_prime(7) == true)
puts(is_prime(8) == false)
puts(is_prime(9) == false)
puts(is_prime(10) == false)
puts(is_prime(23) == true)
puts(is_prime(24) == false)
puts(is_prime(997) == true)
puts(is_prime(998) == false)
puts(is_prime(3_297_061) == true)
puts(is_prime(23_297_061) == false)

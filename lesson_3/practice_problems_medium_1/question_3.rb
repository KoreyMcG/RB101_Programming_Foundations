def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(100)

# Bonus 1) number % divisor == 0 checks to see if the number is an integer number with no remainder.
# Bonus 2) The second to last line factors returns the new array of factors.
# A while loops return value would = nil unless a break is used to supply a value.

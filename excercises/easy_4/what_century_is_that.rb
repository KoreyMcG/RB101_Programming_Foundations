# Problem: Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number, and
# ends with st, nd, rd, or th as appropriate for that number.
# Input: an integer
# Output: string featuring which century it is
#       Explicit Requirements:
#       - Take an integer value
#       - Use integer to determine what century string to output
#       - Dependent on year will output 'st', 'nd', 'rd', 'th'
#       - Century starts from 1-00 ex: 1901-2000 == 20th century
#
#       Implicit Requirements:
#       - Century is 100 years.
#
# Example:
# century(2000) == '20th'
# century(2001) == '21st'
# century(11201) == '113th'
#
# Data Structures: Integer to string
#
# Algorithm:
# - Create century method definition with integer as parameter.
# - Create what_century = (integer / 100) + 1 unless integer ends in 0
# - If integer ends in 0 take ((integer - 1) / 100) + 1
# - Create if statement
#   - if what_century ends in 11..13 return what_century.to_s + 'th'
#   - elsif what_century ends in 1 return what_century.to_s + 'st'
#   - elsif what_century end in 2 return what_century.to_s + 'nd'
#   - elsif what_century end in 3 return what_century.to_s + 'rd'
#   - else what_century ends in 0 return what_century.to_s + 'th'
#
# Code:

def century(year)
  what_century = year[-1] != 0 ? ( year / 100 ) + 1 : ((year - 1) / 100) + 1  # => 20,    21,    20,    3,   1,   102,   11,   12,   113,  11112
  if what_century.to_s =~ /\d{2}/ && (11..13).include?($&.to_i)               # => false, false, false, nil, nil, false, true, true, true, true
    what_century.to_s + 'th'                                                  # => "11th", "12th", "113th", "11112th"
  elsif what_century.to_s[-1] == '1'                                          # => false, true, false, false, true, false
    what_century.to_s + 'st'                                                  # => "21st", "1st"
  elsif what_century.to_s[-1] == '2'                                          # => false, false, false, true
    what_century.to_s + 'nd'                                                  # => "102nd"
  elsif what_century.to_s[-1] == '3'                                          # => false, false, true
    what_century.to_s + 'rd'                                                  # => "3rd"
  else
    what_century.to_s + 'th'                                                  # => "20th", "20th"
  end                                                                         # => "20th", "21st", "20th", "3rd", "1st", "102nd", "11th", "12th", "113th", "11112th"
end                                                                           # => :century

century(2000)                                                                 # => "20th"
century(2001)                                                                 # => "21st"
century(1965)                                                                 # => "20th"
century(256)                                                                  # => "3rd"
century(5)                                                                    # => "1st"
century(10103)                                                                # => "102nd"
century(1052)                                                                 # => "11th"
century(1127)                                                                 # => "12th"
century(11201)                                                                # => "113th"

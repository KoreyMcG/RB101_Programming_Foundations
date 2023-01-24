# Problem: The time of day can be represented as the number of minutes before
# or after midnight. If the number is positive, the time is after midnight. If
# that number is negative, the time is before midnight.
#
# Write a method that takes a tiem using this minute-based format and returns
# that time of day in 24 hour format (hh:mm).
#         Explicit Requirements:
#         - Can not use rubys Date or time classes
#         - Method should work with any integer
#         - Returns format in ( hh:mm ) + or - 24:00
#
# Examples:
# time_of_day(0) == '00:00'
# time_of_day(-3) == '23:57'
# time_of_day(35) == '00:35'
# time_of_day(-1437) == '00:03'
# time_of_day(3000) == '02:00'
# time_of_day(800) == '13:20'
# time_of_day(-4231) == '01:29'
#
# Data Structures
#
# Algorithms:
# initialize clock variable
# initialize hours variable
# initialize minutes variable

def time_of_day(minutes)
  hours, minutes = minutes.divmod(60)
  hours %= 24
  format('%02d:%02d', hours, minutes)
end

time_of_day(0) == '00:00'
time_of_day(-3) == '23:57'
time_of_day(35) == '00:35'
time_of_day(-1437) == '00:03'
time_of_day(3000) == '02:00'
time_of_day(800) == '13:20'
time_of_day(-4231) == '01:29'


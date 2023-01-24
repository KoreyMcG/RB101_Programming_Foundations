# Problem: Write two methods that each take a time of day in 24 hour format,
# and return the number of minutes before or after midnight, respectively. Both
# methods should return a value in the range of 0..1439.
#         Explicit Requirements:
#         - Create two methods, after_midnight and before_midnight and feed
#         in the time in the form of a string '00:00' arguement
#         - Return the number of minutes before or after midnight ( 1440 hours in a day )
#         - Disregard daylight savings time and standard time.
#         Implicit Requirments:
#         - Return an integer value
# Example:
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 754
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0
#
# Data Structure: Array
#
# Algorithm:
# - Convert string arguement into hours and minutes array
# - Take hours / 24 and multiply by 60
# - Sum hours and minutes and return
#
# Code:

def after_midnight(clock)
  hours, minutes = clock.split(':').map(&:to_i)
  hours *= 60
  hours < 1440 ? hours + minutes : minutes
end

def before_midnight(clock)
  hours, minutes = clock.split(':').map(&:to_i)
  hours *= 60
  sum = hours + minutes
  sum == 0 ? sum : 1440 - sum
end

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

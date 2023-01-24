# Problem: Write a method that takes a positive integer, n, as an argument, and
# displays a right triangle whose sides each have n stars. The hypotenuse of the
# triangle (the diagonal side in the images below) should have one end at the
# lower-left of the triangle, and the other end at the upper-right.
#         Explicit Requirements:
#         - Write a method that takes a positive integer
#         - Display a right sided triangle with integer
#         Implicit Requirements: 
#         - Line length is equal to the integer argument
#         - The astriks are at the end
#         - The astriks grow by one from the right each line.
# Example:
# triangle(5)
#     *
#    **
#   ***
#  ****
# *****
#
# Data Structure:
#
# Algorithm:
# - Print a line of 'n' characters
# - On the last character display an '*'
# - Grow that '*' by one on each loop until we reach 'n' stars.
#
# - Print 'n' spaces -1 (GROW THAT NUMBER +1)
#
# Code:

def triangle(lines)
  counter = 0
  until counter == lines
    (lines - counter).times do
      print " "
    end
  counter += 1

  counter.times do
    print '*'
  end
  puts
  end
end

triangle(5)
triangle(9)
triangle(7)

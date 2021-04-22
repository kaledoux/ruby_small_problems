# Write a method that takes a positive integer, n, as an argument, and displays
# a right triangle whose sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one end at the lower-left
# of the triangle, and the other end at the upper-right.
#
# Examples:
#
# triangle(5)
#
#     *
#    **
#   ***
#  ****
# *****
# triangle(9)
#
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - multiline string
# > Requirements:
#   - must take integer as argument
#   - argument must be greater than 0
#   - uses * to print output
#
# > Rules:
#   - output must be right triangle with equal height and width
#   - triangle h + w must equal argument
#   - hypotenuse must rise from bottom left corner to top right corner
#
# Examples:
# See Above
#
# Data Structures:
# the integer passed in as the argument must be used to set parameters on the
# print function of the string output
# iterating in a loop and printing a right justified, incrementing # of '*' until
# the iterator = parameter should work
#
# Algorithm:
# > Pseudo:
# START
# DEFINE triangle(integer)
#   SET counter = 0
#   LOOP
#     puts "*".counter times justified to the right
#     counter += 1
#     break if counter == integer
#   END
# END
#
# Code with Intent:

def triangle(integer)
  counter = 0
  until counter > integer
    puts ('*' * counter).rjust(integer)
    counter += 1
  end
end

#reversed orientation of triangle
def triangle(integer)
  counter = integer
  until counter < 0
    puts ('*' * counter).ljust(integer)
    counter -= 1
  end
end

triangle(5)
triangle(9)

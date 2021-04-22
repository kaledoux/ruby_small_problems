# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.
#
# Examples
#
# diamond(1)
#
# *
#
# diamond(3)
#
#  *
# ***
#  *
#
# diamond(9)
#
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - n * n text grid
# > Requirements:
#   - must take integer as argument
#     > integer will be odd
#     > integer >= 1
#   - must return n * n grid with '*' diamond
#
# > Rules:
#   - each row will have a centered block of '*'
#     > the number of '*' iterates by 2 (odd numbers: 1, 3, 5, 7, 9 etc) until
#       the midpoint is reached (n)
#     > then each row iterates by -2 (9, 7, 5, 3, 1)
#
# Examples:
# See above
#
# Data Structures:
# use the integer argument provided to output lines of text
# create a variable to hold the target_width
# create a variable to hold splat counter (= 1)
# use loop until splat counter == target_width
#   print splat_counter * '*' centered on target_width
#   splat_counter += 2
# use loop until splat_counter == 1
#   splat_counnter -= 1
#   puts splat_counter * '*' centered on target_width
# end
#
# Algorithm:
# > Pseudo:
# START
# DEFINE diamond(number)
#   SET target_width = number
#   SET splat_counter = 1
#   UNTIL splat_counter == target_width
#     PRINT '*' * splat_counter centered on target_width with ' ' padding
#     SET splat_counter += 2
#   END
#   UNTIL splat_counter == 1
#     SET splat_counter -= 1
#     PRINT '*' * splat_counter centered on target_width with ' ' padding
#   END
# END
#
# Code with Intent:

def diamond(number)
  target_width = number
  midpoint = number - 2
  splat_counter = 1
  1.upto(target_width) do |num|
    puts ('*' * num).center(target_width, ' ') if num.odd?
  end
  midpoint.downto(1) do |num|
    puts ('*' * num).center(target_width, ' ') if num.odd?
  end

  # until splat_counter > target_width
  #   ('*' * splat_counter).center(target_width, ' ')
  #   splat_counter += 2
  # end
  # splat_counter -= 2
  # until splat_counter == 1
  #   splat_counter -= 2
  #   ('*' * splat_counter).center(target_width, ' ')
  # end
end

 p diamond(1)
 p diamond(3)
 p diamond(5)
 p diamond(7)

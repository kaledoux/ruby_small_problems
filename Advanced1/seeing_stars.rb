# Write a method that displays an 8-pointed star in an nxn grid, where n is an
# odd integer that is supplied as an argument to the method. The smallest such
# star you need to handle is a 7x7 grid.
#
# Examples
#
# star(7)
#
# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *
#
# star(9)
#
# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - string (printed star pattern)
# > Requirements:
#   - must take an integer argument
#     > integer must be an odd number >= 7
#   - must print an 8 pointed star to a grid
#     > grid is n x n in size
#
# > Rules:
#   - can't take even arguments, must be filtered out
#
# Examples:
# See above
#
# Data Structures:
# method to calculate spacing between stars
#   decreasing
#   increasing
# midline print method (n / 2 + 1)
#
#
# Algorithm:
# > Pseudo:
#
# Code with Intent:
def valid_number?(num)
  num >= 7 && num.odd?
end

def space(num)
  (num - 3) / 2
end

def show_midline(num)
  puts '*' * num
end

def show_tophalf(num)
  width = num
  until num < 3
    puts ('*' + ' ' * space(num) + '*' + ' ' * space(num) + '*').center(width)
    num -= 2
  end
end
def show_bottomhalf(num)
  width = 3
  until width > num
    puts ('*' + ' ' * space(width) + '*' + ' ' * space(width) + '*').center(num)
    width += 2
  end
end

def star(num)
  if valid_number?(num)
    show_tophalf(num)
    show_midline(num)
    show_bottomhalf(num)
  else
    puts 'Invalid number. Only odd numbers > 5 accepted'
  end
end

star(7)
star(9)
star(8)

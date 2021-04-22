# Write a method that will take a short line of text, and print it within a box.
#
# Example:
#
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
# You may assume that the input will always fit in your terminal window.
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - string
# > Requirements:
#   - must take string input of variable length
#     - string will be no wider than the window's width
#   - method must print the string centered in a box comprised of symbols
#   - the string is not being modified
# > Rules:
#   - the string will not be of a length wider than the windows width
#   - each line printed must be of equal width
#   - the output is going to be nil, as we are printing!
#
# Examples:
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
# Data Structures:
# a variable should be created to store the length of the string.
# each line should be printed by referencing the length variable.
# The standard width should be length + 2 (1 blank space on either side)
# Each line should be printed using set symbols and filling in each line dynamically
# according to the width.
# Algorithm:
# > Pseudo:
# START
# SET banner_width = length of string + 4
# PRINT '+' spaced by banner_width amount of '-'
# PRINT '|' spaced by banner_width amount of ' '
# PRINT '|' spaced by banner_width amount of string
# etc
# Code with Intent:

# def print_in_box(string)
#   banner_width = string.length + 2
#   p '+' + '-'.center(banner_width, '-') + '+'
#   p '|' + ' '.center(banner_width, ' ') + '|'
#   p '|' + string.center(banner_width, ' ') + '|'
#   p '|' + ' '.center(banner_width, ' ') + '|'
#   p '+' + '-'.center(banner_width, '-') + '+'
# end

#refactored with method extraction
def banner_line(end_cap_string, center_string, fill_string, banner_width)
  end_cap_string + center_string.center(banner_width, fill_string) + end_cap_string
end

def print_in_box(string)
  banner_width = string.length + 2
  p banner_line('+', '-', '-', banner_width)
  p banner_line('|', ' ', ' ', banner_width)
  p banner_line('|', string, ' ', banner_width)
  p banner_line('|', ' ', ' ', banner_width)
  p banner_line('+', '-', '-', banner_width)
end

print_in_box('To boldly go where no one has gone before.')

print_in_box('')

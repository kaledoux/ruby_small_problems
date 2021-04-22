# Write a method that can rotate the last n digits of a number. For example:
#
# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917
#
# Note that rotating just 1 digit results in the original number being returned.
#
# You may use the rotate_array method from the previous exercise if you want. (Recommended!)
#
# You may assume that n is always a positive integer.
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - two integers
# > Output:
#   - one integer
# > Requirements:
#   - must take two integers as arguments:
#     > first integer is number to be rotated
#     > second number is the amount of right hand digits to rotate
#
# > Rules:
#   - 2nd integer will always be positive
#   - must return new integer
#
# Examples:
# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917
#
# Data Structures:
# use the first argument to create an array
# - convert integer to a string, then the string into an array, then convert each
#   element into an int again
# feed -n..-1 of array into the rotate_array method
# set array[-n..-1] = to result /\
# convert array back to string then back to integer
#
# Algorithm:
# > Pseudo:
# START
# DEFINE rotate_rightmost_digits(digits, n)
#   SET number_array = digits.to_s.each_char{|char| char.to_i}
#   number_array[-n..-1] = rotate_array(number_array[-n..-1])
#   number_array.map {|num| num.to_s}.join.to_i
#
# Code with Intent:
def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(digits, n)
    number_array = digits.to_s.each_char.map {|char| char.to_i}
    number_array[-n..-1] = rotate_array(number_array[-n..-1])
    number_array.map {|num| num.to_s}.join.to_i
end

p rotate_rightmost_digits(735291, 1)
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2)
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3)
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4)
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5)
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6)
p rotate_rightmost_digits(735291, 6) == 352917

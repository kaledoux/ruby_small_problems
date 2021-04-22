# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate
# the remaining digits, you get 329175. Keep the first 2 digits
# fixed in place and rotate again to 321759. Keep the first 3 digits fixed
# in place and rotate again to get 321597. Finally, keep the first 4 digits
# fixed in place and rotate the final 2 digits to get 321579. The resulting
# number is called the maximum rotation of the original number.
#
# Write a method that takes an integer as argument, and returns the maximum
# rotation of that argument. You can (and probably should) use the
# rotate_rightmost_digits method from the previous exercise.
#
# Note that you do not have to handle multiple 0s.
#
# Example:
#
# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - integer
# > Requirements:
#   - must take one integer argument
#     > argument will not contain multiple 0s
#     > argument will be > 0
#   - must return the integer rotated once for each place value (L to R)
#
# > Rules:
#   - can use previous methods for rotation
#
# Examples:
#
# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845
#
# Data Structures:
# create a loop that will run rotate_rightmost_digits a number of times
# equal to the length of the integer, decreasing by one for each iteration
#
# Algorithm:
# > Pseudo:
# START
# DEFINE max_rotation(integer)
#   SET number_array = integer split into individual digits
#   SET counter = number_array.length
#   LOOP
#     SET number_array = rotate_rightmost_digits(number_array, counter)
#     SET counter -= 1
#     BREAK if counter <= 0
#   END
#   RETURN number_arry
# END
#
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

def find_int_size(integer)
  integer.to_s.each_char.map {|char| char.to_i}.size
end

def max_rotation(integer)
  counter = find_int_size(integer)
  numbers = integer
  until counter <= 0
    numbers = rotate_rightmost_digits(numbers, counter)
    counter -= 1
  end
  numbers
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(1005)
p max_rotation(10005)

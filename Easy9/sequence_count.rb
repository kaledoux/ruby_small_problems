# Create a method that takes two integers as arguments.
# The first argument is a count, and the second is the first number of a sequence
# that your method will create. The method should return an Array that contains
# the same number of elements as the count argument, while the values of each
# element will be multiples of the starting number.
#
# You may assume that the count argument will always have a value of 0 or greater,
# while the starting number can be any integer value. If the count is 0, an empty
# list should be returned.
#
# Examples:
#
# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - two integers
# > Output:
#   - array
# > Requirements:
#   - must take two integers
#     > first integer denotes the total numbers in sequence
#     > second integer denotes the amount to increment between each element
#   - must return array with a number of elements each incremented according to
#     arguments passed in
#
# > Rules:
#   - first integer cannot be negative, but can be zero
#   - second integer can be positive, negative, or zero
#   - array can be empty if sequence arg is 0
#
# Examples:
# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []
#
# Data Structures:
# create an empty array to hold the values
# create current_value variable to hold current value (set at arg2 initially)
# iterate arg1 number of times
# each time shovel current value into array
# add arg2 to current value
# return array
#
# Algorithm:
# > Pseudo:
# START
# DEFINE sequence(integer1, integer2)
#   SET sequence_array = []
#   SET current_value = integer2
#   integer1.times
#     APPEND current value to sequence_array
#     ADD integer2 to current value
#   END
#   RETURN sequence_array
# END
#
# Code with Intent:

def sequence(integer1, integer2)
  sequence_array = []
  current_value = integer2
  integer1.times do
    sequence_array << current_value
    current_value += integer2
  end
  sequence_array
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(5, 1)
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(4, -7)
p sequence(3, 0) == [0, 0, 0]
p sequence(3, 0)
p sequence(0, 1000000) == []
p sequence(0, 1000000)

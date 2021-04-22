# Write a method that takes an integer argument, and returns an Array of all
# integers, in sequence, between 1 and the argument.
#
# You may assume that the argument will always be a valid integer that is greater
# than 0.
#
# Examples:
#
# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - array
# > Requirements:
#   - must take an integer argument
#     > integer must be non-0, non-negative
#   - must return an array with starting value 1 and ending value arg
#
# > Rules:
#   - each integer between start and end must be contained as element in array
#
# Examples:
# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]
#
# Data Structures:
# use the integer arg to create an array from a range
# (1..arg) to array
# or
# Array (1..arg)
# or
# a=*(1..arg)
#
# Algorithm:
# > Pseudo:
# START
# DEFINE sequence(number)
#   Array (1..number)
# END
#
# Code with Intent:

def sequence(number)
  Array (1..number)
end

# further exploration
def sequence(number)
  number < 1 ? (number..1).to_a : (1..number).to_a
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
p sequence(-3) 

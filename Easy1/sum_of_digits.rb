# Write a method that takes one argument, a positive integer,
# and returns the sum of its digits.
#
# Examples:
#
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.
#
# For a challenge, try writing this without any basic looping constructs
# (while, until, loop, and each).
#
# PEDAC:
# Understand the Problem:
# > Input: one positive integer
# > Output: one positive integer
#
# > Requirements:
#   - there can only be one argument used
#   - the method cannot contain any looping constructs
#
# > Rules:
#   - the method needs to return the sum of the arguments digits
#
# Examples:
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# These examples should all print true
#
# Data Structures:
# The initial data structure is an integer object, but this will be split into
# separate objects, most likely an array, then combined again into an integer object
#
# Algorithm:
# Pseudo:
# DEFINE method sum with parameter (integer)
# SPLIT the integer into an array containing its constituent numbers
# SUM the array of digits
# END the method
#
# Code with Intent:

def sum(integer)
  integer.digits.sum
end

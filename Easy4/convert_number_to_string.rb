# In the previous two exercises, you developed methods that convert simple numeric
# strings to signed Integers. In this exercise and the next, you're going to
# reverse those methods.
#
# Write a method that takes a positive integer or zero, and converts it to a string
# representation.
#
# You may not use any of the standard conversion methods available in Ruby, such
# as Integer#to_s, String(), Kernel#format, etc. Your method should do this the
# old-fashioned way and construct the string by analyzing and manipulating the
# number.
#
# Examples
#
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - string
# > Requirements:
#   - method must take an integer as an argument
#   - the integer must be converted to a string
#   - method must output a string that matches the integer input (123 ==> '123')
# > Rules:
#   - the input will be an integer
#   - there will be no signs involved
#   - the output must be a string
#   - no use of existing conversion methods
#
# Examples:
# integer_to_string(4321)
# integer_to_string(0)
# integer_to_string(5000)
#
# Data Structures:
# the argument being passed will come in the form of an integer. a conversion hash
# with the digits and their string counterparts should be created for reference.
# the integer should be split into an array of separated digits (.digits) then reversed
# (.reverse).
# the array should be iterated with each element being converted to its string
# equivalent from the STRINGS hash.
# a variable string should be set to a value of ''.
# the array should be iterated again, this time adding the values to the string variable
# while removing them from the array
# returning a string
#
#
# Algorithm:
# > Pseudo:
# SET STRINGS = {1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'}
# DEFINE integer_to_string with parameter (integer)
# CONVERT integer to array
# ITERATE through array
#   SET elements = STRINGS equivalent
# SET return_string = ''
# ITERATE through array
#   SET return_string = array.shift
# RETURN return_string
#
# Code with Intent:
STRINGS = {1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'}

def integer_to_string(integer)
  numbers = integer.digits.reverse.map {|num| STRINGS[num]}
  return_string = ''
  (numbers.size).times {return_string << numbers.shift}
  return_string
end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)

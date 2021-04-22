# In the previous exercise, you developed a method that converts non-negative
# numbers to strings. In this exercise, you're going to extend that method by
# adding the ability to represent negative numbers as well.
#
# Write a method that takes an integer, and converts it to a string representation.
#
# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, use
# integer_to_string from the previous exercise.
#
# Examples
#
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'
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
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'
#
# Data Structures:
# the argument being passed will come in the form of an integer. a conversion hash
# with the digits and their string counterparts should be created for reference.
# a conditonal should be given to determine whether the integer is negative.
# if it is negative, store that information in a variable.
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

def signed_integer_to_string(integer)
  if integer < 0
    '-' + integer_to_string(-integer)
  elsif integer > 0
    '+' + integer_to_string(integer)
  else
    integer_to_string(integer)
  end
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)

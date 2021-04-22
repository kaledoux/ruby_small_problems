# The String#to_i method converts a string of numeric characters (including an
# optional plus or minus sign) to an Integer. String#to_i and the Integer
# constructor (Integer()) behave similarly. In this exercise, you will create
# a method that does the same thing.
#
# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.
#
# For now, do not worry about leading + or - signs, nor should you worry about
#   invalid characters; assume all characters will be numeric.
#
# You may not use any of the standard conversion methods available in Ruby,
# such as String#to_i, Integer(), etc. Your method should do this the
# old-fashioned way and calculate the result by analyzing the characters in the string.
#
# Examples
#
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - integer
# > Requirements:
#   - method takes a string argument
#   - convert string to corresponding integer ('1' ==> 1)
# > Rules:
#   - no use of existing conversion methods (to_i is not allowed)
#   - do not worry about leading + or - signs
#   - all characters given as arguments will be numeric
#   - return value must be an integer
#
# Examples:
# string_to_integer('4321')
# string_to_integer('570')
#
# Data Structures:
# the initial data structure will be a string. construct a hash that will contain
# conversion values for digits 0-9. then split the array into separate values and
# iterate through them converting each to the associated integer. next set a variable
# to receive the values. iterate through the array and add each sbusequent value to
# the receiving variable, being sure to account for place value (which power of ten)
# .Return the variable (as an integer)
#
# Algorithm:
# > Pseudo:
# DEFINE string_to_integer with parameter(string)
# SET DIGIT = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
# '6' => 6, '7' => 7, '8' => 8, '9' => 9}
# CONVERT string to array
# ITERATE through array
#   SET element = DIGIT equivalent
#   REVERSE order of elements
# SET total = 0
# ITERATE through array of digits
#   SET total = total * 10 + digit
# RETURN total
#
# Code with Intent:

DIGIT = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
'6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(string)

  digits = string.chars.map {|numstring| DIGIT[numstring]}

  total = 0
  digits.each {|num| total = total * 10 + num}
  total
end

puts string_to_integer('4321')
puts string_to_integer('570')

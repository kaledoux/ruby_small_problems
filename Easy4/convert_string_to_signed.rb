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
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

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
#   - the string may or may not have a leading + or - sign
#   - all characters given as arguments will be numeric
#   - return value must be an integer that matches the leading sign(if applic)
#
# Examples:
# string_to_signed_integer('4321')
# string_to_signed_integer('-570')
# string_to_signed_integer('+100')
#
# Data Structures:
# the initial data structure will be a string. construct a hash that will contain
# conversion values for digits 0-9. also, construct an array that contains the
# possible signs ( + and - ). check the first value of the array and see
# if it contained in the SIGNS array. If it is, shift it from the array into a
# sign variable.then split the array into separate values and
# iterate through them converting each to the associated integer. next set a variable
# to receive the values. iterate through the array and add each sbusequent value to
# the receiving variable, being sure to account for place value (which power of ten)
# .use a coniditonal to check if the sign is -. if so, multiply the total by -1
# to convert it to a negative.Return the variable (as an integer)
#
# Algorithm:
# > Pseudo:
# DEFINE string_to_integer with parameter(string)
# SET DIGIT = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
# '6' => 6, '7' => 7, '8' => 8, '9' => 9}
# SET SIGNS = ['+', '-']
# CONVERT string to array
# IF SIGNS.include?(array[0])
#   SET leading_sign = array[0] shifted from array
# ITERATE through array
#   SET element = DIGIT equivalent
#   REVERSE order of elements
# SET total = 0
# ITERATE through array of digits
#   SET total = total * 10 + digit
# IF leading_sign == '-'
#   SET total = total * -1
# RETURN total
#
# Code with Intent:

DIGIT = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
'6' => 6, '7' => 7, '8' => 8, '9' => 9}

SIGNS = ['-', '+']

def string_to_signed_integer(string)

  digits = string.chars
  leading_sign = digits.shift if SIGNS.include?(digits[0])

  digits.map! {|numstring| DIGIT[numstring]}

  total = 0
  digits.each {|num| total = total * 10 + num}
  leading_sign == '-' ? total * -1 : total
end

puts string_to_signed_integer('4321')
puts string_to_signed_integer('-570')
puts string_to_signed_integer('+100')

# Write a method that determines and returns the ASCII string value of a
# string that is passed in as an argument. The ASCII string value is the sum of
# the ASCII values of every character in the string.
# (You may use String#ord to determine the ASCII value of a character.)
#
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - integer
# > Requirements:
#   - method must take one string as a parameter
#   - the string must be converted to the sum of the ASCII values
#     > EG: 'abc' ==> 97 + 98 + 99 (294)
#   - the method must output the sum of the ASCII values
# > Rules:
#   - String#ord can be used to find the ASCII values
#   - the output must be an integer
#   - What about spaces?
#
# Examples:
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0
#
# Data Structures:
# the argument will be passed in the form of a string. the string should be split
# into individual letters, most likely in an array. we can create a variable to
# hold the ordinal value totals. then we can iterate through the array, converting each
# individual letter string to its ordinal equivalent, and add this value to the
# total.
# then, return the variable
# Algorithm:
# > Pseudo:
# DEFINE ascii_value with parameter (string)
# SET letters = string SPLIT by character
# SET ascii_total = 0
# ITERATE through letters |i|
#   ADD ordinal value of i to ascii_total
# END iteration
# RETURN ascii_total
# END
#
# Code with Intent:

def ascii_value(string)
  letters = string.chars
  ascii_total = 0
  letters.each do |letter|
    ascii_total += letter.ord
  end
  ascii_total
end

#refactor
def ascii_value(string)
  ascii_total = 0
  string.chars.map {|letter| ascii_total += letter.ord}
  ascii_total
end

puts ascii_value('Four score')
puts ascii_value('Launch School')
puts ascii_value('a')
puts ascii_value('')

# Write a method that takes a non-empty string argument, and returns the middle
# character or characters of the argument. If the argument has an odd length, you
# should return exactly one character. If the argument has an even length, you
# should return exactly two characters.
#
# Examples:
#
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - string
# > Requirements:
#   - takes non-empty string argument
#   - return center character(s)
#     > if string has even number of characters, return middle two
#     > if string has odd number of character, return middle one
#
# > Rules:
#   - return new string, non mutating
#   - spaces/symbols count as valid characters
#
# Examples:
# puts center_of('I love ruby')
# puts center_of('Launch Schoo
# puts center_of('Launch')
# puts center_of('Launchschool')
# puts center_of('x')
#
# Data Structures:
# take the string length to run a conditional
# if the length is odd slice teh middle character (length/2 rounded up)
# if the length is even slice the middle two characters (length/2, 1)
# return
#
# Algorithm:
# > Pseudo:
# START
# DEFINE center_of(word)
#   IF word.length.odd?
#     word.slice(word.length / 2)
#   ELSE
#     word.slice(((word.length / 2) - 1), 2)
#   END
# END
#
# Code with Intent:
def center_of(word)
  word.length.odd? ? word.slice(word.length / 2) : word.slice(((word.length / 2) - 1), 2)
end

puts center_of('I love ruby')
puts center_of('Launch School')
puts center_of('Launch')
puts center_of('Launchschool')
puts center_of('x')

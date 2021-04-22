# Write a method that returns a list of all substrings of a string that start at
# the beginning of the original string. The return value should be arranged in
# order from shortest to longest substring.
#
# Examples:
#
# substrings_at_start('abc') == ['a', 'ab', 'abc']
# substrings_at_start('a') == ['a']
# substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - array
# > Requirements:
#   - must take a string
#     > minimum length of string is 1 substring
#   - needs to create array with every substring beginning with leading letter, in order
#   - does not need to find substrings beyond those starting with leading letter
#
# > Rules:
#   - array must be returned
#
# Examples:
# substrings_at_start('abc')
# substrings_at_start('a')
# substrings_at_start('xyzzy')
# substring_at_start('philadelphia')
#
# Data Structures:
# we can use the string to iterate through
# create the array to contain the resulting values
# for a number of times == string.length
#   add string[0]..string[i] to the array
# return the array
#
# Algorithm:
# > Pseudo:
# START
# DEFINE substrings_at_start(string)
#   SET substrings =[]
#   FOR string.length.times |i|
#     substrings << string.slice(0, i)
#   END
# END
#
# Code with Intent:

def substrings_at_start(string)
  substrings = []
  string.length.times { |i| substrings << string.slice(0, i + 1)}
  substrings
end

p substrings_at_start('abc')
p substrings_at_start('a')
p substrings_at_start('xyzzy')
p substrings_at_start('philadelphia')

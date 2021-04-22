# Write a method that returns a list of all substrings of a string.
# The returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first,
# then all substrings that start at position 1, and so on. Since multiple
# substrings will occur at each position, the substrings at a given position
# should be returned in order from shortest to longest.
#
# You may (and should) use the substrings_at_start method you wrote in the
# previous exercise:
#
# Examples:
#
# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]
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
#   - need to create each substring with each letter subsequent to the leading letter
#     as well
#
# > Rules:
#   - array must be returned containing all substrings
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
# we need to iterate through string five times, on each iteration, there needs to
# be a second iteration wherein the substrings are built based on the starting index
# each index for starting values need to iterate with each round
# # return the array
# #
# # Algorithm:
# # > Pseudo:
# START
# DEFINE substrings_at_start(string)
#   SET array to []
#   SET index to 0
#   ITERATE string.length times
#     ITERATE through string
#       FROM index,
#       ADD letter to current_string
#       ADD current_string to array
#     END
#     index += 1
#   END
# This can be done by using the previous method inside this method
#
#
#
# Code with Intent:

def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  substrings = []
  (0..string.size).each do |start_index|
    current_string = string[start_index..-1]
    substrings.concat(substrings_at_start(current_string))
  end
  substrings
end


p substrings('abc')
p substrings('a')
p substrings('xyzzy')
p substrings('abcde')

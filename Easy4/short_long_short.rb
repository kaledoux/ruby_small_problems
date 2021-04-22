# Write a method that takes two strings as arguments,
# determines the longest of the two strings, and then returns the result of
# concatenating the shorter string, the longer string, and the shorter string
# once again. You may assume that the strings are of different lengths.
#
# Examples:
#
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - Two strings
# > Output:
#   - One string, combination of two arguments
# > Requirements:
#   - program needs to evaluate which input string is longer
#   - method needs to create a new string, short + long + short
# > Rules:
#   - input strings will be uneven lengths
#   - case insensitive
#   - input strings will not contain spaces or symbols
#
# Examples:
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"
#
# Data Structures:
# The starting data structure will be the arguments in the form of strings.
# The comparison of these strings' lengths can be determined without changing this
# structure. The return string will also be in string form.
#
# Algorithm:
# > Pseudo:
# DEFINE method short_long_short with arguments ( string1, string2)
#   FIND the length of string1
#   FIND the length of string2
#   COMPARE lengths
#   IF string1.length > string2.length
#     RETURN string1 + string2 + string1
#   ELSE
#     RETURN string2 + string1 + string2
#   END
# END method def

# Code with Intent:

def short_long_short(string1, string2)
  string1.length > string2.length ? (string2 + string1 + string2)
  : (string1 + string2 + string1)
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')

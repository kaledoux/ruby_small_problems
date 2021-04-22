# Write a method that returns the next to last word in the String passed to it as
# an argument.
#
# Words are any sequence of non-blank characters.
#
# You may assume that the input String will always contain at least two words.
#
# Examples:
#
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - string
# > Requirements:
#   - must take one string as an argument
#     > string will contain at least two words
#   - must return new string
#   - capitalization is not modified
#
# > Rules:
#   - words are any sequence of non-blank characters
#
# Examples:
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'
#
# Data Structures:
# break the string into an arr by splitting it at spaces
# find the indexed value of [-1]
# return it converted to string
#
# Algorithm:
# > Pseudo:
# START
# DEFINE penultimate(string)
#   SPLIT string into arr
#   FIND arr[-2]
#   CONVERT to string
# END
#
# Code with Intent:

def penultimate(string)
  (string.split)[-2]
end

puts penultimate('last word')
puts penultimate('Launch School is great!')

# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.
#
# Examples:
#
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - boolean
# > Requirements:
#   - must take string argument
#     > string can be empty
#   - needs to check if all alpha characters in string are upcased
#     > spaces, symbols, numbers are not counted
#
# > Rules:
#   -
#
# Examples:
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true
#
# Data Structures:
# take the starting string and split it into an array
# select the alpha characters from the array checking against a regexp
# iterate through the array of letters and check if each matches an uppercase
# regexp (/[A-Z]/). if any fail return false, else true
#
# Algorithm:
# > Pseudo:
# START
# DEFINE uppercase?(string)
#   SET char_array = string.chars
#   SET letter_array = char_array.select {|char| /[[:alpha]]/.match?(char)}
#   IF letter_array includes /[a-z]/
#     RETURN false
#   ELSE
#     RETURN true
#   END
# END
# END
#
# Code with Intent:

def uppercase?(string)
  letter_array = string.chars.select {|char| /[[:alpha]]/.match?(char)}
  letters = letter_array.join
  letters.upcase == letters ? true : false
end
# refactor - checking upcase version without separating out non alphas works as well
def uppercase?(string)
  string.upcase == string
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true

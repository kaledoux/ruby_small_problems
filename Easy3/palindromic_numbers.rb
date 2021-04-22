# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.
#
# Examples:
#
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - Takes one argument, an integer
# > Output:
#   - Returns a boolean value
# > Requirements:
#   - Must take one integer argument
#   - Needs to determine if the argument is a palindrome
#   - Must return a boolean value
# > Rules:
#   - The number is a palindrome if it reads the same front to back
#
# Examples:
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true
#
# Data Structures:
# The argument will come in as an integer. The integer should be able to be
# converted into a string and reversed. The reversed string can be compared against
# the initial integer as a string.
# This will yield a boolean value as the final output.
#
# Algorithm:
# > Pseudo:
# START program
# DEFINE palindromic_number? with argument (integer)
# SET new_integer =
#   REVERSE integer -array-
#   CONVERT array to string
#   CONVERT string to int
# COMPARE new_integer to integer
# IF ==
#   RETURN TRUE
# ELSE
#   RETURN FALSE
# END
# END method def
# END program
#
# Code with Intent:

def palindromic_number?(int)
  new_integer = int.to_s.reverse
  new_integer == int.to_s
end

p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)

# Given a string that consists of some words and an assortment of
# non-alphabetic characters, write a method that returns that string
# with all of the non-alphabetic characters replaced by spaces.
# If one or more non-alphabetic characters occur in a row, you
# should only have one space in the result (the result should never
# have consecutive spaces).
#
# Examples:
#
# cleanup("---what's my +*& line?") == ' what s my line '
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - string
# > Requirements:
#   - the method must remove non-alphabetic characters from the string
#   - symbols are to be replaced with spaces
#   - the input can contain multiple words, spaces, and symbols
# > Rules:
#   - the method must return a new string
#   - there cannot be multiple spaces consecutively in the return
#   - there are not multiple consecutive spaces in the input
#
# Examples:
# cleanup("---what's my +*& line?") == ' what s my line '
#
# Data Structures:
# the input will be a string containing multiple words, spaces, and symbols.
# move through the string to replace symbols (non-aplha) with spaces.
# then remove excess spaces from the string
#
# Algorithm:
# > Pseudo:
# DEFINE is_alphanumeric?(string)
#   /[a-zA-Z0-9]/.match(string)
# END
# DEFINE cleanup(messy_string)
# SET clean_string =
#   REPLACE messy_string non-alpha characters (/[^a-zA-Z0-9]/) with space ' '
#   REMOVE excess spaces from messy_string (squeze)
# RETURN clean_string
#
# Code with Intent:
 def cleanup(messy_string)
   clean_string = messy_string.gsub(/[\W]/, ' ').squeeze(' ')
   clean_string
 end

 puts cleanup("---what's my +*& line?")

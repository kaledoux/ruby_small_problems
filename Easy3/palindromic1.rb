# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise. A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.
#
# Examples:
#
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - The method will take one argument, a string
# > Output:
#   -The output will be a boolean value
# > Requirements:
#   - The method takes one string argument
#   - The method evaluates the string to determine if it is a palindrome
#   - It will output a boolean based on the evaluation
# > Rules:
#   - The input must be a string, and only one string
#   - Case must be accounted for in determination of pallindrome
#   - Symbols must be accounted for in determination of pallindrome
#   - Spaces must be accounted for in determination of pallindrome
#
# Examples:
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true
#
# Data Structures:
# The incoming data structure is a string. I believe the analysis can be done by
# creating a new string and modifying it in place, then comparing the two. The final
# output will be a boolean value.
#
# Algorithm:
# > Pseudo:
# START the program
# DEFINE palindrome? with argument (string)
#   SET other_string =
#     REVERSE string
#   CHECK if other_string == string
#   RETURN boolean
# END
#
# Code with Intent:

def palindrome?(string)
  string == string.reverse
end

puts palindrome?('madam')
puts palindrome?('Madam')
puts palindrome?("madam i'm adam")
puts palindrome?('356653')

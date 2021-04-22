# Write another method that returns true if the string passed as an argument is
# a palindrome, false otherwise. This time, however, your method should be c
# ase-insensitive, and it should ignore all non-alphanumeric characters.
# If you wish, you may simplify things by calling the palindrome? method you wrote
# in the previous exercise.
#
# Examples:
#
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - The method takes one string as its input
# > Output:
#   - The method will output a boolean value
# > Requirements:
#   - The method needs to take one string as its argument
#   - It must determine if the string is a true palindrome
#   - The output needs to be a boolean value
# > Rules:
#   - Case is not considered during evaluation
#   - Only alphanumeric characters are used in the evaluation
#   - Spaces are not considered in the evaluation
#
# Examples:
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false
#
# Data Structures:
# The argument for the method comes in the form of a string. The string may need to be
# converted to an array to split by individual characters. Then the array will
# be modified by removing all non-alphanumeric characters. It can then be rejoined into
# a new string . This string can then be used to evaluate as a palindrome.
#
# Algorithm:
# > Pseudo:
# START program
# DEFINE true_palindrome? with argument (string)
#   SET new_string =
#     - string SPLIT by character
#     - non-alphanumeric characters removed
#     - lowercased
#   IF new_string == REVERSED new_string
#     RETURN TRUE
#   ELSE
#   RETURN FALSE
#   END
# END Definition
# END program

# Code with Intent:

def real_palindrome?(string)
  new_string = string.downcase.chars.delete_if { |element| !/[a-zA-Z0-9]/.match?(element)}.join
  new_string == new_string.reverse
end

#USing string's delete method to tidy the code
def real_palindrome?(string)
  new_string = string.downcase.delete('^a-Z0-9')
  new_string == new_string.reverse
end


p real_palindrome?('madam')
p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam")
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')

# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.
#
# Example:
#
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - array of strings
# > Output:
#   - array of strings (without vowels)
# > Requirements:
#   - upper and lower case vowels must be stripped from the array
#   - return value can be in either format w%() or ['','']
# > Rules:
#   - the return value is an array, not a print
#   - the return value is a new array
#   - the input will not be a blank array
#
# Examples:
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
#
# Data Structures:
# the first data structure is an array containing a string.
# we will create a new array to hold return values
# by running the string in the argument array against a regex containing vowels,
# we can delete every letter from the string and assign the new strings to the
# answer array.
# then return the new array
# Algorithm:
# > Pseudo:
# START
# DEFINE remove_vowels(vowel_array)
#   consonant_array = []
#   ITERATE through vowel_array
#     REMOVE 'aeiouAEIOU' from string
#     ADD string to consonant_array
#   END
#   RETURN consonant_array
# END
#
# Code with Intent:
def remove_vowels(vowel_array)
  vowel_array.map {|string| consonant_array << string.delete('aeiouAEIOU')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))

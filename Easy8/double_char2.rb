# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.
#
# Examples:
#
# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - string with consonants doubled
# > Requirements:
#   - must take a string argument
#   - must return a new string with certain characters doubled
#     > consonants are doubled
#     > vowels are not doubled
#     > symbols are not doubled
#     > spaces are not doubled
#
# > Rules:
#   - arg string can be empty
#   - case matters in return values
#   - should return a NEW string
#
# Examples:
# puts double_consonants('String')
# puts double_consonants("Hello-World!")
# puts double_consonants("July 4th")
# puts double_consonants('')
#
# Data Structures:
# create a method that will take a string (character) and return a certain string
# value cased on case (when char matches regex for consonants char * 2, etc)
# create a new string to hold return values
# iterate through the original string for each char
# run each char through case method and shovel output into return string
#
# Algorithm:
# > Pseudo:
# START
# DEFINE double_it(character)
#   IF character is contained in 'bcdfghjklmnpqrstvwxyz'
#     character * 2
#   ELSE
#     character
#   END
# END
# DEFINE double_consonants(string)
#   SET double_string = []
#   FOR each each character in single string
#     double_string << doube_it(character)
#   END
#   RETURN double_string
# END
#
# Code with Intent:

def double_char(character)
  if /[b-df-hj-np-tv-z]/.match?(character.downcase)
    character * 2
  else
    character
  end
end

def double_consonants(single_string)
  double_string = ''
  single_string.each_char {|char| double_string << double_char(char)}
  double_string
end

puts double_consonants('String')
puts double_consonants("Hello-World!")
puts double_consonants("July 4th")
puts double_consonants('')

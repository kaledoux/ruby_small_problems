# Write a method that takes a string as an argument and returns a new string in
# which every uppercase letter is replaced by its lowercase version, and every
# lowercase letter by its uppercase version. All other characters should be unchanged.
#
# You may not use String#swapcase; write your own version of this method.
#
# Example:
#
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - string (new)
# > Requirements:
#   - must take a string of any length
#   - must return a new string with letter cases swapped
#   - digits and symbols remain untouched
#
# > Rules:
#   - no empty strings (?)
#
# Examples:
# swapcase('CamelCase')
# swapcase('Tonight on XYZ-TV')
#
# Data Structures:
# create a method to swap the case of a letter
#   it will take a string argument
#   if the string matches (/[[:lower:]]/)
#     make the string upcase
#   if the string matches (/[[:upper:]]/)
#     make the string downcase
#   else
#     nothing
#   end
# with this method in place you can split the original string into characters in an array
# iterate through the array and run the swap case method on each
# then rejoin the array and return the resulting string
# this will create a new string separate from the passed argument
#
# Algorithm:
# > Pseudo:
# START
# DEFINE change_character_case(string)
#   IF string.match?(/[[:lower:]]/)
#     string.upcase
#   ELSIF string.match?(/[[:upper:]]/)
#     string.downcase
#   ELSE
#     string
#   END
# END
# DEFINE swapcase(string)
#   SPLIT string into array of characters
#   ITERATE through array
#     character = change_character_case(character)
#   END
#   JOIN array
#   RETURN new string
# END
#
# Code with Intent:

# def change_character_case(string)
#   if string.match?(/[[:lower:]]/)
#     string.upcase
#   elsif string.match?(/[[:upper:]]/)
#     string.downcase
#   else
#     string
#   end
# end
# def swapcase(string)
#   string.chars.map{ |letter| change_character_case(letter)}.join
# end

def swapcase(string)
  string.chars.map do |letter|
    letter.match?(/[[:alpha:]]/) ? letter.match?(/[[:lower:]]/) ? letter.upcase : letter.downcase : letter
    # if letter.match?(/[[:lower:]]/)
    #   letter.upcase
    # elsif letter.match?(/[[:upper:]]/)
    #   letter.downcase
    # else
    #   letter
    # end
  end.join
end

puts swapcase('CamelCase')
puts swapcase('Tonight on XYZ-TV')

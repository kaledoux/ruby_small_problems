# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
# converted to a string of digits.
#
# Example:
#
# word_to_digit('Please call me at five five five one two three four. Thanks.')
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - string
# > Requirements:
#   - must take a string with multiple substrings and convert number from string to int
#     > 0..9 must be converted to 'zero'..'nine'
#     > what constitutes a sequence?
#   - must return string with converted string values 'one' to '1' etc
#
# > Rules:
#   - string will contain several number strings (min #?)
#   - no compound number strings (eg: 'thirty-five') or values above 9
#
# Examples:
# word_to_digit('Please call me at five five five one two three four. Thanks.')
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
#
# Data Structures:
# create a numbers hash to hold string keys and integer string values {'zero' => '0'}
# use the string argument to create an array by splitting the substrings
# iterate through the array (map)
#   if number hash has key that matches element
#     convert element to integer string each equivalent
# return new array
#
# Algorithm:
# > Pseudo:
# START program
# SET NUMBER_HASH = {'zero' => '0',
#                    'one' => '1',
#                    'two' => '2',
#                    'three' => '3',
#                    'four' => '4',
#                    'five' => '5',
#                    'six' => '6',
#                    'seven' => '7',
#                    'eight' => '8',
#                    'nine' => '9'}
# DEFINE word_to_digit(number_string)
#   SET number_array = number_string.split
#   MAP number_array |string|
#     CHECK the current string against the keys in NUMBER_HASH
#     IF the string matches a key
#       SET string to NUMBER_HASH[string]
#     ELSE
#       RETURN string
#     END
#   RETURN new array
# END
#
# Code with Intent:

NUMBER_HASH = {'zero' => '0',
               'one' => '1',
               'two' => '2',
               'three' => '3',
               'four' => '4',
               'five' => '5',
               'six' => '6',
               'seven' => '7',
               'eight' => '8',
               'nine' => '9'
}
def word_to_digit(number_string)
  number_array = number_string.split()
  number_array.map! do |string|
    NUMBER_HASH.has_key?(/\b#{string}\b/) ? NUMBER_HASH[string] : string
  end
  number_array.join(' ')
end

# try to construct a method using gsub and regexs
def word_to_digit(number_string)
  NUMBER_HASH.each do |string, value|
    number_string.gsub!(/\b#{string}\b/, NUMBER_HASH[string])
  end
  number_string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Write a method that takes an Array of Integers between 0 and 19,
# and returns an Array of those Integers sorted based on the English
# words for each number:
#
# zero, one, two, three, four, five, six, seven, eight, nine, ten,
# eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen,
# eighteen, nineteen
#
# Examples:
#
# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - array of 19 numbers (0..18)
# > Output:
#   - array
# > Requirements:
#   - method must take an unsorted array or integers
#   - array needs to be sorted alphabetically by english written equivalents (eg: 9 to 'nine')
#   - the sorted array needs to be returned
#
# > Rules:
#   - the method will return a different array (not given as requirement, but inferred)
#   - the input is an array without duplicate values
#   - elements are sorted by english written equivalents
#
# Examples:
# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]
#
# Data Structures:
# to start, construct a hash that contains the values for the given range and their
# equivalent written string values.
# take the array and iterate through it, swapping the integers for their string
# equivalents based on the hash. then sort the array alphabetically. convert the
# elements of the array back to their integer equivalents using the hash.
# return the hash
#
# Algorithm:
# > Pseudo:
# SET number_words = {0 => 'zero',
#                     1 => 'one',
#                     2 => 'two',
#                     3 => 'three',
#                     4 => 'four',
#                     5 => 'five',
#                     6 => 'six',
#                     7 => 'seven',
#                     8 => 'eight',
#                     9 => 'nine',
#                     10 => 'ten',
#                     11 => 'eleven',
#                     12 => 'twelve',
#                     13 => 'thirteen',
#                     14 => 'fourtenn',
#                     15 => 'fifteen',
#                     16 => 'sixteen',
#                     17 => 'seventeen',
#                     18 => 'eighteen'
#                   }
# DEFINE  alphabetic_number_sort(array)
# ITERATE through array
#   each do |number|
#     number_words[number]
#   END
#   SORT array alphabetically
#   CONVERT array back to integer values
#   RETURN array
# END
#
# Code with Intent:

number_words = {0 => 'zero',
                    1 => 'one',
                    2 => 'two',
                    3 => 'three',
                    4 => 'four',
                    5 => 'five',
                    6 => 'six',
                    7 => 'seven',
                    8 => 'eight',
                    9 => 'nine',
                    10 => 'ten',
                    11 => 'eleven',
                    12 => 'twelve',
                    13 => 'thirteen',
                    14 => 'fourtenn',
                    15 => 'fifteen',
                    16 => 'sixteen',
                    17 => 'seventeen',
                    18 => 'eighteen'
                  }
def alphabetic_number_sort(range_array)
  number_words = {0 => 'zero',
                      1 => 'one',
                      2 => 'two',
                      3 => 'three',
                      4 => 'four',
                      5 => 'five',
                      6 => 'six',
                      7 => 'seven',
                      8 => 'eight',
                      9 => 'nine',
                      10 => 'ten',
                      11 => 'eleven',
                      12 => 'twelve',
                      13 => 'thirteen',
                      14 => 'fourteen',
                      15 => 'fifteen',
                      16 => 'sixteen',
                      17 => 'seventeen',
                      18 => 'eighteen',
                      19 => 'nineteen'
                    }
  sorted_array = range_array.map {|number| number_words[number]}.sort.map! {|string| number_words.key(string)}
end

p alphabetic_number_sort((0..19).to_a)

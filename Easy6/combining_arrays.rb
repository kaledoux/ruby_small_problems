# Write a method that takes two Arrays as arguments, and returns an Array that
# contains all of the values from the argument Arrays. There should be no
# duplication of values in the returned Array, even if there are duplicates in
# the original Arrays.
#
# Example
#
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - two arrays
# > Output:
#   - one array
# > Requirements:
#   - two arrays will be given
#   - the array will contain integer values only (or can they contain mixed?)
#   - the array sizes are three each (can they contain more or less than three?)
#   - must return a different array containing all elements from both arguments
#     but not containing any duplicate values
# > Rules:
#   - only two arguments will be provided
#   - no duplicate values in final array
#   - final values are sorted
#
# Examples:
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
#
# Data Structures:
# two array will be given as arguments. combine these two arrays into one larger
# array (final_array). set a variable current_value
# remove duplicate values by sorting final_array and iterating, on each iteration
# set current_value to iteration and delete the element if the next value is ==
# return the last array
# Algorithm:
# > Pseudo:
# START
# DEFINE merge(array1, array2)
#   SET final_array = []
#   ADD array1 to final_array
#   ADD array2 to final_array
#   COMBINE arrays into one collection
#   ITERATE through final_array to remove duplicate values
#   END
# END
# Code with Intent:

def merge(array1, array2)
  final_array = []
  (final_array << array1 << array2).flatten.sort.uniq
end

#or use the hax Array#method |
# def merge(array1, array2)
#   array1 | array2
# end

p merge([1, 3, 5], [3, 6, 9])
p merge([1, 3, 5, 5, 6], [3, 6, 9, 9, 9])
p merge([], [3, 6, 9])
p merge([], [])
p merge([1, 3, 5], [3.5])
#comparison of integer with string failed \/
p merge([1, 3, 5], [3, 6, 9, '34'])

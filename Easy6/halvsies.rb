# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half of the
# original Array, respectively. If the original array contains an odd number of
# elements, the middle element should be placed in the first half Array.
#
# Examples:
#
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - one array
# > Output:
#   - one array with two nested array elements
# > Requirements:
#   - must take two arguments, each an array
#   - returns one array containing two nested arrays
#   - argument array can only contain integer values
#   - argument array can be empty (still needs to return two empty nested arrays)
# > Rules:
#   - when argument array contains odd number of arguments, the first of the two
#     nested return arrays must contain the "extra" return value
#
# Examples:
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]
#
# Data Structures:
# using the argument array, you can shovel targeted values into a second array
# return_array. iterate through array using the index values, if the index value
# is <= array.length then it gets shoveled into return_array[0], otherwise it gets
# shoveled into return_array[1].
#
# Algorithm:
# > Pseudo:
# START
# DEFINE halvies(array)
#   SET return_array = [[],[]]
#   ITERATE through array by index
#     IF index <= (array.size) / 2
#       ADD element to return_array[0]
#     ELSE
#       ADD element to return_array[1]
#     END
#   END iteration
#   return_array
# END
# END
# Code with Intent:

def halvsies(arr)
  return_array = [[],[]]
  arr.each_with_index do |item, index|
    if arr.size.even?
      index < (arr.size) /2 ? return_array[0] << item : return_array[1] << item
    else
      index <= (arr.size) /2 ? return_array[0] << item : return_array[1] << item
    end
  end
  return_array
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])

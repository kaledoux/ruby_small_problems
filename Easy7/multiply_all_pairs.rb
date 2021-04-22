# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.
#
# You may assume that neither argument is an empty Array.
#
# Examples:
#
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - two array
# > Output:
#   - one array
# > Requirements:
#   - must take two arrays
#     > arrays are non-empty and contain integers
#   - new array contains every possible product of arr1 elements and arr2 elements
#
# > Rules:
#   - must return a new array
#   - the return array must be sorted in ascending order
#
# Examples:
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
#
# Data Structures:
# create a new array to hold the values calculated with the two argument arrays
# iterate through arr1 and multiply each indexed value by each indexed value in arr2
# add each result to the results array
#
# Algorithm:
# > Pseudo:
# START
# DEFINE multiply_all_pairs(arr1, arr2)
#   SET results_array = []
#   ITERATE through arr1
#     FOR each iteration
#       ITERATE through arr2
#         ADD arr1 element * arr2 element to results array
#       END
#     END
#   END
#   RETURN results_array
# END
#
# Code with Intent:

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map {|combined_array| combined_array.inject(:*)}.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])

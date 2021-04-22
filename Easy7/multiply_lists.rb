# Write a method that takes two Array arguments in which each Array contains a list
# of numbers, and returns a new Array that contains the product of each pair of
# numbers from the arguments that have the same index. You may assume that the arguments
# contain the same number of elements.
#
# Examples:
#
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - two arrays
# > Output:
#   - one array (new)
# > Requirements:
#   - takes two arrays as arguments
#     > arrays are non-empty, contain integers, and have equal numbers of elements
#   - needs to return a new array with each value equal to the product of the indexed positions
#     of the arg arrays
#
# > Rules:
#
# Examples:
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
#
# Data Structures:
# create a new array to hold the product values
# iterate through the first array with each_with_index
# product *= element * arr2[index]
# return new array
#
# Algorithm:
# > Pseudo:
# START program
# DEFINE multiply_list(arr1, arr2)
#   SET product_array = []
#   ITERATE through arr1
#     FOR each indexed value
#     product_array[index] = element * arr[2]
#   END
#   RETURN product_array
# END
#
# Code with Intent:

def multiply_list(arr1, arr2)
  product_array = []
  arr1.each_with_index do |element, index|
    product_array[index] = element * arr2[index]
  end
  product_array
end

p multiply_list([3, 5, 7], [9, 10, 11])

# Write a method that takes an Array of numbers and then returns the sum of the
# sums of each leading subsequence for that Array. You may assume that the Array
# always contains at least one number.
#
# Examples:
#
# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - array
# > Output:
#   - integer
# > Requirements:
#   - must take one array
#     > array contains at least one element
#     > elements are positive integers
#   - must return the sum of each combination of elements
#
# > Rules:
#   - no floats
#   - must include each subsequent total up to and including the last element
#
# Examples:
# sum_of_sums([3, 5, 2])
# sum_of_sums([1, 5, 7, 3])
# sum_of_sums([4])
# sum_of_sums([1, 2, 3, 4, 5])
#
# Data Structures:
# using the array that was passed in we can iterate through each element therein
# create a variable to hold the current total or running total = 0
# create a variable to hold the total = 0
# for each element, current total += the iteration
# for each number, total += current total
# Then display the total
#
# Algorithm:
# > Pseudo:
# START
# DEFINE sum_of_sums(arr)
#   SET running_total = 0
#   SET total = 0
#   ITERATE through arr
#     FOR each element
#       running_total += element
#       total += running_total
#   END
#   RETURN total
#
# Code with Intent:

def sum_of_sums(arr)
  running_total = 0
  total = 0
  arr.map do |number|
    running_total += number
    total += running_total
  end
  total
end

puts sum_of_sums([3, 5, 2])
puts sum_of_sums([1, 5, 7, 3])
puts sum_of_sums([4])
puts sum_of_sums([1, 2, 3, 4, 5])

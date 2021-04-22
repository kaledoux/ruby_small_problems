# Write a method named include? that takes an Array and a search value as arguments.
# This method should return true if the search value is in the array, false if
# it is not. You may not use the Array#include? method in your solution.
#
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - one array and one additional value
# > Output:
#   - boolean value
# > Requirements:
#   - must search array for given search value
#   - must account for nil values, and empty arrays
#   - returns must be boolean
#
# > Rules:
#   - arrays can contain any value type except for nested arrays and hashes
#
# Examples:
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false
#
# Data Structures:
# keep the first parameter as an array.
# utilize the Array.count method to find the count of the second parameter within
# the array
# if the count is greater than 0, return true else return false
#
# Algorithm:
# > Pseudo:
# START
# DEFINE include?(arr, search_value)
#   COUNT the number of occurences of search_value in arr
#   IF the count is > 0
#     RETURN true
#   ELSE
#     RETURN false
#   END
# END
# END
#
# Code with Intent:

def include?(arr, search_value)
  arr.count(search_value) > 0 ? true : false
end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3)
p include?([nil], nil)
p include?([], nil)

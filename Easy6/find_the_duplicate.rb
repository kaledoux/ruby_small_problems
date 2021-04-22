# Given an unordered array and the information that exactly one value in the array
# occurs twice (every other value occurs exactly once), how would you determine
# which value occurs twice? Write a method that will find and return the duplicate
# value that is known to be in the array.
#
# Examples:
#
# find_dup([1, 5, 3, 1]) == 1
# find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - one array
# > Output:
#   - one integer
# > Requirements:
#   - must take an array of any size
#   - must find the one duplicated value in the array
#   - the array will be unordered when passed as argument
#
# > Rules:
#   - the array will only contain integers
#   - the array will contain one pair of duplicate values
#   - the array cannot be empty
#
# Examples:
# See above
#
# Data Structures:
# the array passed into the method can be sorted
# create a variable current_element = 0
# iterate through the array
#   set current_element to the iterator
#   if the next item in the line == current_element
#     exit and return current_element
#   end
# this should leave a final value of the repeated integer
#
# Algorithm:
# > Pseudo:
# START
# DEFINE find_dup(arr)
#   SET current_element = 0
#   SORT array
#   ITERATE through array by item and index
#     SET current_element = item
#     IF array[index + 1] == current_element
#       BREAK and RETURN current_element
#     ELSE
#       CONTINUE
#     END
#   END
# END
#
# Code with Intent:

def find_dup(arr)
  current_element = 0
  arr.sort!.each_with_index do |item, index|
    current_element = item
    break current_element if arr[index + 1] == current_element
  end
end

def find_the_dup(arr)
  arr.find {|element| array.count(element) == 2}
end

p find_dup([1, 5, 3, 1])
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58])

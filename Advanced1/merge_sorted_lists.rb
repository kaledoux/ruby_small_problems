# Write a method that takes two sorted Arrays as arguments, and returns a new
# Array that contains all elements from both arguments in sorted order.
#
# You may not provide any solution that requires you to sort the result array.
# You must build the result array one element at a time in the proper order.
#
# Your solution should not mutate the input arrays.
#
# Examples:
#
# merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# merge([], [1, 4, 5]) == [1, 4, 5]
# merge([1, 4, 5], []) == [1, 4, 5]
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - arrays with integer values (2)
# > Output:
#   - array of integers (1)
# > Requirements:
#   - must take two arrays as arguments
#     > arrays contain integers
#     > arrays can be empty
#   -must return one array with values from each array combined and sorted
#
# > Rules:
#   - original arrays cannot be mutated
#   - cannot make use of sort method on result array
#     > need to build result array one element at a time
#
# Examples:
# merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# merge([], [1, 4, 5]) == [1, 4, 5]
# merge([1, 4, 5], []) == [1, 4, 5]
#
# Data Structures:
# start by creating a temp array to hold the contents of both args
# create the results array to hold final values
# loop on temp array until temp array is empty
# remove min value and add to result array
# return result array
#
# Algorithm:
# > Pseudo:
# START program
# DEFINE merge(arr1, arr2)
#   SET temp_arr = arr1 + arr2
#   SET merged_and_sorted_arr = []
#   UNTIL temp_arr is empty
#     ADD temp_arr.delete(temp_arr.min) to merged_and_sorted_arr
#   END
#   RETURN merged_and_sorted_arr
# END
#
# Code with Intent:
# this method does not pass; delete removes all instances of the element
def merge(arr1, arr2)
  temp_arr = arr1 + arr2
  merged_and_sorted_arr = []
  until temp_arr.empty?
    merged_and_sorted_arr << temp_arr.delete(temp_arr.min)
  end
  merged_and_sorted_arr
end

# this makes use of simple iteration and index tracking to work with both arrays
def merge(arr1, arr2)
  index2 = 0
  result = []

  arr1.each do |value|
    while index2 < arr2.size && arr2[index2] <= value
      result << arr2[index2]
      index2 += 1
    end
    result << value
  end
  result.concat(arr2[index2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 5, 9], [2, 6, 8])
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([1, 1, 3], [2, 2])
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([], [1, 4, 5])
p merge([1, 4, 5], []) == [1, 4, 5]
p merge([1, 4, 5], [])

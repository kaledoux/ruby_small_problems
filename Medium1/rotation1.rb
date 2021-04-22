# Write a method that rotates an array by moving the first element to the end of
# the array. The original array should not be modified.
#
# Do not use the method Array#rotate or Array#rotate! for your implementation.
#
# Example:
#
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']
#
# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - array
# > Output:
#   - array
# > Requirements:
#   - must take an array argument
#     > array must be non-empty; can contain integers or strings
#     > contains > 1 && upto ?
#   - must return array with first element repositioned as last element
#
# > Rules:
#   - must return a new array, not mutate argument
#
# Examples:
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']
#
# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true
#
# Data Structures:
# use the original array to create a second array with matching elements
# take the first element and append it to the array
# then delete the first value
# return this array
#
# Algorithm:
# > Pseudo:
# START program
# DEFINE rotate_array(starting_array)
#   SET return_array = starting_array
#   APPEND return_array[0] to return_array
#   DELETE return_array[0]
#   RETURN return_array
# END
#
# Code with Intent:

def rotate_array(starting_array)
  return_array = []
  starting_array.map {|element| return_array << element }
  return_array << return_array.first
  return_array.delete_at(0)
  return_array
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']
#
# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true


def rotate_string(string)
  rotate_array(string.chars).join
end

p rotate_string('monopoly')
p rotate_string('This is Life')
p rotate_string('a')

def rotate_integer(integer)
  rotate_string(integer.to_s)
end

p rotate_integer(1234)
p rotate_integer(579298461682)
p rotate_integer(1)
  

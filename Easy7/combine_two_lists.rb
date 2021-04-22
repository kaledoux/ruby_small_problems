# Write a method that combines two Arrays passed in as arguments, and returns
# a new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.
#
# You may assume that both input Arrays are non-empty, and that they have the same
# number of elements.
#
# Example:
#
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - two arrays
# > Output:
#   - one array (new)
# > Requirements:
#   - must take two arrays as arguments
#   - must return new array with elements of each arg arr combined
#     > the elements in return array must alternate bewteen two arg array elements
#       (eg: 1, 'a', 2, 'b' etc)
#   - arrays can contain any type of value
# > Rules:
#   - size limit to arrays?
#   - nested elements?
#   - arrays are not empty
#   - arrays have the same number of elements
#
# Examples:
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
#
# Data Structures:
# starting with two arrays, we will create a return_array to hold the alternating
# values from each of the arguments
# set counter to 0
# start a conditional loop that runs until the size of return_array is equal to the
# combined sizes of the two arg arrs.
# if the counter value is 0 or odd, it will shovel arr1 shift into return_array
# if the counter value is odd, it will shovel arr2 shift into return_array
# return the new array
#
# Algorithm:
# > Pseudo:
# START
# DEFINE interleave(arr1, arr2)
#   SET return_array = []
#   SET counter = 1
#   UNTIL arr2 is empty
#     IF counter is odd
#       return_array << arr1.shift
#       counter += 1
#     ELSE
#       return_array << arr2.shift
#       counter += 1
#     END
#   END
#   RETURN return_array
# END
#
# Code with Intent:

# this method works, but removes the values from the arrays, mutating them permanently
def interleave(arr1, arr2)
  return_array = []
  counter = 1
  until arr2.empty?
    if counter.odd?
      return_array << arr1.shift
      counter += 1
    else
      return_array << arr2.shift
      counter += 1
    end
  end
  return_array
end

# this array uses Enumerable#each_with_index to cycle through the index and shovel the indexed
# values of each arg arr in sequence
def interleave(arr1, arr2)
  return_array = []
  arr1.each_with_index do |element, index|
    return_array << element << arr2[index]
  end
end

# this makes use of the Array#zip method to combine the two, requires a flatten
def interleave(arr1, arr2)
  return_array = arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])

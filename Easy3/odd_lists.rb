# Write a method that returns an Array that contains every other element of an
# Array that is passed in as an argument. The values in the returned list
# should be those values that are in the 1st, 3rd, 5th, and so on elements of
# the argument Array.
#
# Examples:
#
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - The method will take an array as an argument to a method
# > Output:
#   - The method should return an array
# > Requirements:
#   - The method needs to return an array
#   - The method will take an array as its argument
#   - The method can take an array containing an type of value
# > Rules:
#   - The return array must contain only the odd indexed elements of the argument array
#
# Examples:
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
#
# Data Structures:
# The first data structure will be an array that is passed in the form of an argument
# of the method. The original array will need to be modified with destructive methods,
# or the method will need to return a new array with the corresponding values.
# The final output is also an array.
#
# Algorithm:
# > Pseudo:
# START the program
# DEFINE oddities(arr)
# GET array
# SET result_array = []
# SET counter = 0
# UNTIL counter > array.size
#   result_array << array.[counter]
#   counter += 2
# END loop
# RETURN result_array
# END method def
# END program
#
# Code with Intent:

# def oddities(arr)
#   result_array = []
#   counter = 0
#   while counter < arr.size
#     result_array << arr[counter]
#     counter += 2
#   end
#   result_array
# end

# # Version 2
# def oddities(arr)
#   result_array = []
#   arr.each_index do |index|
#     if index == 0
#       result_array << (arr[index])
#     elsif index.even?
#       result_array << (arr[index])
#     end
#   end
#   result_array
# end

# Version 3
def oddities(arr)
  result_array = []
  arr.each_with_index do |element, index|
    result_array << (element) if index.even? || index == 0
  end
  result_array
end


def evenities(arr)
  result_array = []
  counter = 1
  while counter < arr.size
    result_array << arr[counter]
    counter += 2
  end
  result_array
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])

p evenities([2, 3, 4, 5, 6])
p evenities([1, 2, 3, 4, 5, 6])
p evenities(['abc', 'def'])
p evenities([123])
p evenities([])

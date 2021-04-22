# A 3 x 3 matrix can be represented by an Array of Arrays in which the main Array
# and all of the sub-Arrays has 3 elements. For example:
#
# 1  5  8
# 4  7  2
# 3  9  6
#
# can be described by the Array of Arrays:
#
# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]
#
# An Array of Arrays is sometimes called nested arrays because each of the inner
# Arrays is nested inside an outer Array.
#
# To access an element in matrix, you use Array#[] with both the row index and
# column index. So, in this case, matrix[0][2] is 8, and matrix[2][1] is 9.
#   An entire row in the matrix can be referenced by just using one index:
#   matrix[1] is the row (an Array) [4, 7, 2]. Unfortunately, there's no convenient
#   notation for accessing an entire column.
#
# The transpose of a 3 x 3 matrix is the matrix that results from exchanging the
# columns and rows of the original matrix. For example, the transposition of the
# array shown above is:
#
# 1  4  3
# 5  7  9
# 8  2  6
#
# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns
# the transpose of the original matrix. Note that there is a Array#transpose
# method that does this -- you may not use it for this exercise. You also are not
# allowed to use the Matrix class from the standard library. Your task is to do
#   this yourself.
#
# Take care not to modify the original matrix: you must produce a new matrix and
# leave the original matrix unchanged.
#
# Examples
#
# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]
#
# new_matrix = transpose(matrix)
#
# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
#
# This program should print "true" twice.
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - array
# > Output:
#   - array (Matrix)
# > Requirements:
#   - must take an array argument
#     > array will contain 3 nested arrays of 3 numbers each
#       ([[1, 2, 3], [1, 2, 3],[1, 2, 3]])
#   - must transpose the arg array into a matrix
#     > ([[1, 1, 1], [2, 2, 2], [3, 3, 3]])
#
# > Rules:
#   - arg array must contain 3 nested arrays (scale for n arrays with n numbers?)
#   - cannot use Array#transpose method
#   - cannot use Matrix class from standard library
#   - must return a new array, without modifying the array object passed in as arg
#
# Examples:
# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]
#
# new_matrix = transpose(matrix)
#
# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
# #4x4 matrix for scaled version testing
# matrix = [
#   [1, 2, 3, 4],
#   [1, 2, 3, 4],
#   [1, 2, 3, 4],
#   [1, 2, 3, 4]
# ]
#
# new_matrix = transpose(matrix)
#
# p new_matrix == [[1, 1, 1, 1], [2, 2, 2, 2], [3, 3, 3, 3], [4, 4, 4, 4]]
# p matrix == [[1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4]]
#
# Data Structures:
# since the original object cannot be modified, the method needs to include the
# creation of a fresh variable to hold the rearranged values
#   - new_matrix = [[], [], []]
# for scalability, create a method that will initialize a nested array of n
#   size
#   initialize_empty_matrix
#   create an empty array (blank_array = [])
#   num.times << [] into blank_array
#   return the blank_array
#   - new_matrix = initialize_empty_matrix(num)
# iterate through each element in the arg array (each nested array)
#   for each nested array, iterate through each element therein (numbers)
#   assign the first number to the first array in new_matrix
#   assign the second number to the second array in new_matrix
#   etc...
# return the new_matrix
#
# Algorithm:
# > Pseudo:
# START program
#
# DEFINE initialize_empty_matrix(num)
#   SET new_matrix = []
#   FOR num.times do
#     new_matrix << []
#   END LOOP
#   RETURN new_matrix
# END method
#
# DEFINE transpose(array)
#   SET new_matrix = initialize_empty_matrix(array.size)
#   EACH element in array do |nested_array|
#     EACH element and index in nested_array do |number|
#       SET new_matrix[index] << number
#     END LOOP
#   END LOOP
#   RETURN new_matrix
# END method
#
# Code with Intent:

def initialize_empty_matrix(num)
  new_matrix = []
  num.times { new_matrix << [] }
  new_matrix
end

def transpose(array)
  new_matrix = initialize_empty_matrix(array.size)
  array.each do |nested_array|
    nested_array.each_with_index do |number, index|
      new_matrix[index] << number
    end
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
#4x4 matrix for scaled version testing
matrix = [
  [1, 2, 3, 4],
  [1, 2, 3, 4],
  [1, 2, 3, 4],
  [1, 2, 3, 4]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 1, 1, 1], [2, 2, 2, 2], [3, 3, 3, 3], [4, 4, 4, 4]]
p matrix == [[1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4]]

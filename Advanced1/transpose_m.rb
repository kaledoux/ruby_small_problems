# Matrix transposes aren't limited to 3 x 3 matrices, or even square matrices.
# Any matrix can be transposed by simply switching columns with rows.
#
# Modify your transpose method from the previous exercise so it works with
# any matrix with at least 1 row and 1 column.
#
# Examples:
#
# transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# transpose([[1]]) == [[1]]
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - array
# > Output:
#   - new array (matrix)
# > Requirements:
#   - takes an array of any size as argument
#     > array can have any evenly distributed set of nested arrays
#       EG: [[1, 2, 3, 4, 5]] && [[1], [2], [3]] are valid
#           [[1, 2, 3], [1, 2]] is not valid
#   - transposes arg array into a new matrix
#
# > Rules:
#   - must return a new matrix, not modify the current array in place
#
# Examples:
# transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# transpose([[1]]) == [[1]]
#
# Data Structures:
# create method to initialize an empty array
#   > number of blank arrays == array[1].size
# method to transpose
#   > create a new empty matrix (new_matrix = initialize_empty_matrix(array[1].size)
#   iterate through each element in array (nested_array)
#   iterate through each element in nested_array with index
#     add number to new_matrix[index]
#   return the new_matrix
# end
#
# Algorithm:
# > Pseudo:
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
  new_matrix = initialize_empty_matrix(array[0].size)
  array.each do |nested_array|
    nested_array.each_with_index do |number, index|
      new_matrix[index] << number
    end
  end
  new_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

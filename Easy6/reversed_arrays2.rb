# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order. Do not modify the original list.
#
# You may not use Array#reverse or Array#reverse!, nor may you use the method
# you wrote in the previous exercise.
#
# Examples:
#
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true
#
# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - array
# > Output:
#   - array (different object from input)
# > Requirements:
#   - takes array in either from [] or %w()
#   - returns an array with the same values in reversed order
#   - accepts empty arrays
# > Rules:
#   - arrays can contain numbers or strings
#   - the object id of the argument cannot be the same as the returned array
#
# Examples:
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true
#
# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true
#
# Data Structures:
# a second array to hold values and be returned must be created, this will separate
# the objects being modified
# the orginal array can be iterated through and each value can be prepended to the
# results array
# this will keep the orginal array intact, while adding the values in reversed
# order to the results array
# Algorithm:
# > Pseudo:
# START
# DEFINE reverse!(array)
#   SET reversed_array = []
#   ITERATE through array
#     - for each element in array
#       PREPEND it to reversed_array
#   END
#   RETURN reversed_array
# END
# END
#
# Code with Intent:

def reverse(array)
  reversed_array = []
  array.map {|element| reversed_array.prepend(element)}
  reversed_array
end

#using Enumerable#inject
def reverse(array)
  reversed_array = []
  array.inject(0) {|collector, item| reversed_array.prepend([item])}
  reversed_array
end

p reverse([1,2,3,4]) == [4,3,2,1]
p reverse(%w(a b e d c)) == %w(c d e b a)
p reverse(['abc']) == ['abc']
p reverse([]) == []

p list = [1, 3, 2]
p new_list = reverse(list)
p list.object_id != new_list.object_id
p list == [1, 3, 2]
p new_list == [2, 3, 1]

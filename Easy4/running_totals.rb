# Write a method that takes an Array of numbers, and returns an Array with
# the same number of elements, and each element has the running total from
# the original Array.
#
# Examples:
#
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - array
# > Output:
#   - array
# > Requirements:
#   - takes an array as input
#   - uses array to construct second array adding subsequent values to create next element
#     a, a+b, a+b+c etc.
# > Rules:
#   - arrays can be empty
#   - return must be a new array
#
# Examples:
# running_total([2, 5, 13])
# running_total([14, 11, 7, 15, 20])
# running_total([3])
# running_total([])
#
# Data Structures:
# the initial data structure is an array. we will need to create a second array to
# dump return values into. we will also create an integer object for keeping the
# current running total. using the initial array we will iterate through the array
# and add the current item to the running total. The running total will then be
# appended to the results array, which will be returned upon completion.
#
# Algorithm:
# > Pseudo:
# DEFINE running_total with parameter (array)
# SET running_total = 0
# SET results_array = []
# ITERATE through array
#   running_total += i
#   results_array << running_total
# END
# results_array
# END
#
# Code with Intent:

def running_total(array)
  current_total = 0
  results_array = []
  array.each do |number|
    current_total += number
    results_array << current_total
  end
  results_array
end

#refactored
def running_total(array)
  sum = 0
  array.map {|number| sum += number}
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])

# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array. The array will never be
# empty and the numbers will always be positive integers.
#
# Examples:
#
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print true.

# PEDAC
# Understand the problem:
# > Input: a non-empty array with positive integers
# > Output: an integer

# > Requirements:
#   - the arrays provided are never empty
#   - the arrays provided will only contain positive integers
#   - the method only takes one argument, an array
#   - the method returns an average value of the array contents
# > Rules:
#   - non-integer values are not expected
#   - zero values not expected

# Examples:
# puts find_average([1, 5, 87, 45, 8, 8]) == 25
# puts find_average([9, 47, 23, 95, 16, 52]) == 40
# puts find_average([123, 35, 2, 4, 65, 65]) == 49

# Data Structures:
# The method should take an array and iterate through the collection. These
# values will be added together into a running total and then divided by the
# total number of values. This will yield one positive integer from an array.

# Algorithm:
# Psuedo:
#
# DEFINE find_average with parameter (array)
#   SET variable total_amount = 0
#   ITERATE through array
#     for each number do the following
#       CONVERT the number to an INT
#       ADD the number to total_amount
#   END the iteration
#   SET varable calculated_average = total_amount divided by the size of the array
#   DISPLAY the average
# END the method definition
#
# Code with Intent:

def find_average(array)
  total_amount = 0
  array.each do |number|
    total_amount += number.to_i
  end
  calculated_average = (total_amount / array.count).to_f
  calculated_average
end

puts find_average([1, 5, 87, 45, 8, 8]) == 25
puts find_average([9, 47, 23, 95, 16, 52]) == 40
puts find_average([123, 35, 2, 4, 65, 65]) == 49
# This same functionality can be simplified with the use of the builtin method sum

def find_average(array)
  (array.sum / array.count).to_f
end

# This can also be done using Enumberable methods to condense the member values of
# the collection:

def average(array)
  sum = array.reduce { |sum, number| sum + number}
  (sum / array.count).to_f
end

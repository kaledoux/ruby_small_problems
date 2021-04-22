# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. Assume the array is non-empty.
#
# Examples:
#
# show_multiplicative_average([3, 5])
# The result is 7.500
#
# show_multiplicative_average([6])
# The result is 6.000
#
# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - array (non-empty)
# > Output:
#   - string containing a float
# > Requirements:
#   - must take a non empty array of integers
#   - calculates the sum of each element in the array
#   - finds the average of the elements rounded to 3 decimal places
#
# > Rules:
#   - arrays are non empty
#   - must return a string
#
# Examples:
# show_multiplicative_average([3, 5])
# The result is 7.500
#
# show_multiplicative_average([6])
# The result is 6.000
#
# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
#
# Data Structures:
# set a variable that can hold the sum (set to 1.0)
# iterate through array and *= each value to sum variable
# set variable to float value with 3 decimal places and calculate with sum / array.length
# return the average
#
# Algorithm:
# > Pseudo:
# START
# DEFINE show_multiplicative_average(arr)
#   SET sum = 1.0
#   ITERATE through arr
#     element *= arr
#   END
#   SET average = sum / (arr.length - 1)
#   CONVERT average to 3 decimal place float
# END
#
# Code with Intent:

def show_multiplicative_average(arr)
  sum = 1.0
  arr.map {|num| sum *= num}
  average = sum / arr.size
  puts "The result is #{format("%0.3f", average)}"
end

puts show_multiplicative_average([3, 5])
puts show_multiplicative_average([6])
puts show_multiplicative_average([2, 5, 7, 11, 13, 17])

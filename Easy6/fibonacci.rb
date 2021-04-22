# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent number
# is the sum of the two previous numbers. This series appears throughout the
# natural world.
#
# Computationally, the Fibonacci series is a very simple series, but the results
# grow at an incredibly rapid rate. For example, the 100th Fibonacci number is
# 354,224,848,179,261,915,075 -- that's enormous, especially considering that it
# takes 6 iterations before it generates the first 2 digit number.
#
# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument.
# (The first Fibonacci number has index 1.)
#
# Examples:
#
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847
#
# You may assume that the argument is always greater than or equal to 2.
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - integer
# > Requirements:
#   - must return integer corresponding to index of first number with argument# of
#     digits
#   - must take argument of any size integer (no floats, minimum size of 2)
# > Rules:
#   - the return value must be the index value of the corresponding element, not
#     the value of the element itself
#
# Examples:
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847
#
# Data Structures:
# set the following intitial values : index = 2, first = 1, second = 1
# add first and second together to get the next number in the series
# set this to another variable: fib
# set second to fib and first to second, this wil setup the next fibonacci sequence
# loop this until size of number = parameter; this will require converting the int
# to a string to calculate the size
# return the index
#
# Algorithm:
# > Pseudo:
# START
# DEFINE find_fibonacci_index_by_length(integer)
#   SET index = 2
#   SET first = 1
#   SET second = 1
#
#   UNTIL fib.to_s.size >= integer
#     index += 1
#     fib = first + second
#     first = second
#     second = fib
#   END
#   RETURN index
#
#
# # Code with Intent:
def find_fibonacci_index_by_length(integer)
  index = 2
  first = 1
  second = 1

  loop do
    index += 1
    fib = first + second
    break if fib.to_s.size >= integer

    first = second
    second = fib

  end
  index
end

puts find_fibonacci_index_by_length(2)
puts find_fibonacci_index_by_length(3)
puts find_fibonacci_index_by_length(10)
puts find_fibonacci_index_by_length(100)
puts find_fibonacci_index_by_length(1000)
puts find_fibonacci_index_by_length(10000)

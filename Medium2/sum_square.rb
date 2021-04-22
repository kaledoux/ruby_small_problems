# Write a method that computes the difference between the square of the sum of
# the first n positive integers and the sum of the squares of the first n positive
# integers.
#
# Examples:
#
# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - integer
# > Requirements:
#   - takes an integer as argument (n)
#     > must be greater than 0
#   - calculate two numbers:
#     > square of sum of n positive integers
#     > sum of square of n positive integers
#   - calculate difference between two
#
# > Rules:
#   - returns the difference between sum of squares and square of sums
#
# Examples:
# p sum_square_difference(3) == 22
# p sum_square_difference(3)
# p sum_square_difference(10) == 2640
# p sum_square_difference(10)
# p sum_square_difference(1) == 0
# p sum_square_difference(1)
# p sum_square_difference(100) == 25164150
# p sum_square_difference(100)
#
# Data Structures:
# might be easier to create two methods that will calculate the sum of squares
#   and the square of sum
# once both are made, run them inside the method to calculate the difference
#
# Algorithm:
# > Pseudo:
# START
# DEFINE find_square_of_sum(num)
#   SET number  = 0
#   FROM 1 to num |value|
#     ADD value to number
#   END
#   RETURN number ** 2
# END
#
# DEFINE find_sum_of_squares(num)
#   SET number = 0
#   FROM 1 to num |value|
#     ADD value ** 2 to number
#   END
#   RETURN number
# END
#
# DEFINE sum_square_difference(num)
#   RETURN find_square_of_sum(num) - find_sum_of_squares(num)
# END
#
# Code with Intent:

# def find_square_of_sum(num)
#   number = 0
#   1.upto(num) do |value|
#     number += value
#   end
#   number ** 2
# end
#
# def find_sum_of_squares(num)
#   number = 0
#   1.upto(num) do |value|
#     number += value ** 2
#   end
#   number
# end
#
# def sum_square_difference(num)
#   find_square_of_sum(num) - find_sum_of_squares(num)
# end

# refactor to include both methods and assignments into one

def sum_square_difference(num)
  sum = 0
  squares = 0
  1.upto(num) do |number|
    sum += number
    squares += number ** 2
  end
  (sum ** 2) - squares
end


p sum_square_difference(3) == 22
p sum_square_difference(3)
p sum_square_difference(10) == 2640
p sum_square_difference(10)
p sum_square_difference(1) == 0
p sum_square_difference(1)
p sum_square_difference(100) == 25164150
p sum_square_difference(100)

# Write a method that searches for all multiples of 3 or 5 that lie between
# 1 and some other number, and then computes the sum of those multiples.
# For instance, if the supplied number is 20, the result should be
# 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
#
# You may assume that the number passed in is an integer greater than 1.
#
# Examples
#
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - integer
# > Requirements:
#   - takes one integer as an argument
#   - finds all multiples of 3 and 5 within range 1..argument
#   - adds all multiples up and presents as output
# > Rules:
#   - integers input will be greater than 1
#   - output must be an integer
#
# Examples:
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168
#
# Data Structures:
# the initial data structure will be an integer. This integer will be used to
# create a range object. using the range object we can iteratate, and add
# each matching value (multiples of 3 or 5) into a separate totals variable.
#
# Algorithm:
# > Pseudo:
# DEFINE multisum with parameter (integer)
# SET total = 0
# ITERATE through range of 1..integer
#   IF i divisible by 3 or 5
#     add i to total
#   END
# PRINT total
#
# Code with Intent:

def multisum(integer)
  total = 0
  (1..integer).each do |num|
    total += num if (num % 3 ==0) || (num % 5 == 0)
  end
  total
end

puts multisum(3)
puts multisum(5)
puts multisum(10)
puts multisum(1000)

# Write a method that takes a number as an argument. If the argument is a
# positive number, return the negative of that number. If the number is 0 or
# negative, return the original number.
#
# Examples;
#
# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0      # There's no such thing as -0 in ruby
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - integer (negative)
# > Requirements:
#   - takes an integer as an argument
#     > arg can be negative, 0, or positive
#   - returns a the negative equivalent of the integer
#
# > Rules:
#   - 0 should not return negative
#   - ony takes integers
#
# Examples:
# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0
#
# Data Structures:
# start with the integer arg
# use conditional
# if the value is less than or equal to 0
#   return the same number
# else
#   return the number * -1
#
# Algorithm:
# > Pseudo:
# START
# DEFINE negative(number)
#   IF number <= 0
#     RETURN number
#   ELSE
#     RETURN number * -1
#   END
# END
# END
# Code with Intent:

def negative(number)
  number <= 0 ? number : number * -1
end


puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0

# A double number is a number with an even number of digits whose left-side
# digits are exactly the same as its right-side digits. For example, 44, 3333,
# 103103, 7676 are all double numbers. 444, 334433, and 107 are not.
#
# Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned as-is.
#
# Examples:
#
# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - integer
# > Requirements:
#   - must take one integer argument
#     > must be greater than 0
#   - must return an integer
#     > if the integer is a double (3434, 77, 103103) returns the same number
#     > otherwise resturns the number * 2
#
# > Rules:
#   - integer must be positive
#   - underscores can be used for readability, by are not counted in the value itself
#
# Examples:
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10
#
# Data Structures:
# taking the integer arg, convert it to a string
# if the length is odd, no modification is needed
# if the length is even, split the string in half
#   if the two halves are the same, rejoin them and return
#   if not, convert back to joined integer and multiply by 2
# if the length was odd, convert back to int * 2
#
# Algorithm:
# > Pseudo:
# START
# DEFINE twice(number)
#   SET check_number = number.to_s
#   SET mid_point = check_number.size / 2
#   IF check_number.length.odd?
#     RETURN number * 2
#   ELSE
#     SET firt_half = check_number[0, mid_point]
#     SET second_half = check_number[midpoint + 1, -1]
#     IF first_half == second_half
#       number
#     ELSE
#       number * 2
#     END
#   END
#   END
# END
#
# Code with Intent:

def twice(number)
  check_number = number.to_s
  mid_point = (check_number.size / 2)
  if check_number.size.odd?
    number * 2
  else
    first_half = check_number[0..(mid_point - 1)]
    second_half = check_number[mid_point..-1]
    if first_half == second_half
      number
    else
      number * 2
    end
  end
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10

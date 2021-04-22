# A featured number (something unique to this exercise) is an odd number that is
# a multiple of 7, and whose digits occur exactly once each.
# So, for example, 49 is a featured number, but 98 is not (it is not odd),
# 97 is not (it is not a multiple of 7), and 133 is not
# (the digit 3 appears twice).
#
# Write a method that takes a single integer as an argument, and returns the next
# featured number that is greater than the argument. Issue an error message if
# there is no next featured number.
#
# Examples:
#
# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987
#
# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - integer or string (error message)
# > Requirements:
#   - takes one integer as an argument
#   - must find the next featured number
#     > featured number:
#       - divisible by 7 (num % 7 == 0)
#       - is odd
#       - each number can only appear once (35 i sok, but 133 is not)
#   - returns featured number or error if number is larger than 9_999_999_999
#
# > Rules:
#   - must return next possible featured number or error if there isn't one
#
# Examples:
# p featured(12) == 21
# p featured(12)
# p featured(20) == 21
# p featured(20)
# p featured(21) == 35
# p featured(21)
# p featured(997) == 1029
# p featured(997)
# p featured(1029) == 1043
# p featured(1029)
# p featured(999_999) == 1_023_547
# p featured(999_999)
# p featured(999_999_987) == 1_023_456_987
# p featured(999_999_987)
#
# Data Structures:
# create a method to check if a number is a featured number
#
# use the argument to set a variable for current_number
# start a loop
#   each iteration will add 1 to the current_number
#   break the iteration if the number is a featured number
#   otherwise continue until 9_999_999_999
#     if the current_number is equal to 9_999_999_999 exit with error
# return the featured number
#
# Algorithm:
# > Pseudo:
# START
# SET NUMBERS = [1, 2, 3, 4, 5 ,6 ,7 ,8 ,9, 0]
#
# DEFINE featured_number?(num)
#   RETURN false if num % 7 != 0
#   SET num = array of digits
#     FOR each element in NUMBERS |digit|
#       IF num array COUNT of digit is > 1
#       RETURN false
#     END
#   RETURN true
# END
#
# DEFINE featured(num)
#   SET current_number = num + 1
#   LOOP DO
#     IF current_number is a featured number (featured_number?(current_number))
#     BREAK RETURN current_number
#     current_number += 1
#     IF current_number == 9_999_999_999
#     BREAK & puts('Sorry, there is no next featured number!')
#   END
# END
#
# Code with Intent:
# NUMBERS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
#
# def featured_number?(num)
#   return false if num % 7 != 0 || num % 2 == 0
#   digit_array = num.digits
#   return false if digit_array.uniq != digit_array
#   NUMBERS.each do |number|
#     return false if digit_array.count(number) > 1
#   end
#   true
# end
# refactored to removed the loop though NUMBERS (significantly faster)
def featured_number?(num)
  return false if num % 7 != 0 || num % 2 == 0
  digit_array = num.digits
  return false if digit_array.uniq != digit_array
  true
end

def featured(num)
  current_number = num + 1
  loop do
    break current_number if featured_number?(current_number)
    current_number += 1
    break puts 'No next featured number!' if current_number >= 9_999_999_999
  end
end

p featured(12) == 21
p featured(12)
p featured(20) == 21
p featured(20)
p featured(21) == 35
p featured(21)
p featured(997) == 1029
p featured(997)
p featured(1029) == 1043
p featured(1029)
p featured(999_999) == 1_023_547
p featured(999_999)
p featured(999_999_987) == 1_023_456_987
p featured(999_999_987)

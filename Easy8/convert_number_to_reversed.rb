# Write a method that takes a positive integer as an argument and returns that
# number with its digits reversed. Examples:
#
# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1
#
# Don't worry about arguments with leading zeros - Ruby sees those as octal
# numbers, which will cause confusing results. For similar reasons, the return
# value for our fourth example doesn't have any leading zeros.
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - integer
# > Requirements:
#   - must take integer argument
#   - must return integer in reversed order
#
# > Rules:
#   - return cannot start with leading 0's
#   - argument must be positive
#
# Examples:
# puts reversed_number(12345)
# puts reversed_number(12213)
# puts reversed_number(456)
# puts reversed_number(12000)
# puts reversed_number(12003)
# puts reversed_number(1)
#
# Data Structures:
# create an array to hold the values from the argument being reversed
# after the values are stored iterate through the array, if the element at index[0]
# is 0, delete it from the array
# join the array and convert it to an integer
#
# Algorithm:
# > Pseudo:
# START
# DEFINE reversed_number(integer)
#   SET reversed_array = integer.digits
#   UNTIL reversed_array[0] != 0
#     REMOVE the first element in reversed_array | reversed_array.shift
#   END
#   JOIN reversed_array
#   CONVERT to integer
#   RETURN value
# END
#
# Code with Intent:

def reversed_number(integer)
  reversed_array = integer.digits
  until reversed_array[0] != 0
    reversed_array.shift
  end
  reversed_array.join.to_i
end

#refactor
def reversed_number(integer)
  reversed_array = integer.digits
  reversed_array.shift until reversed_array[0] != 0
  reversed_array.join.to_i
end

#refactored further
def reversed_number(number)
  number.digits.join.to_i
end

puts reversed_number(12345)
puts reversed_number(12213)
puts reversed_number(456)
puts reversed_number(12000)
puts reversed_number(12003)
puts reversed_number(1)

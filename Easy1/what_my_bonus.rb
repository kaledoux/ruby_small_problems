# Write a method that takes two arguments, a positive integer and a boolean,
# and calculates the bonus for a given salary. If the boolean is true, the bonus
# should be half of the salary. If the boolean is false, the bonus should be 0.
#
# Examples:
#
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# The tests above should print true.
#
# PEDAC:
# Understand the Problem:
# > Input
#     - one positive integer
#     - one boolean
# > Output
#     - integer
# > Requirements:
#   - output must be half of the integer if boolean is true
#   - output must be 0 if the boolean is false
# > Rules:
#   - the first argument must be a positive integer
#   - the second argument must be a boolean
#   - the output must be an integer
#
# Examples:
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# The tests above should print true.
#
# Data Structures:
# The input should start at and stay as an integer throughout.
#
# Algorithm:
#
# DEFINE method calculate_bonus with parameters (integer, boolean)
# IF boolean == true
#   integer / 2
# ELSIF boolean == false
#   0
# END conditional
# END method
#
# Code with Intent:

def calculate_bonus(integer, boolean)
  boolean == true ? integer / 2 : 0
end

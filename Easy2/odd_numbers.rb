# Print all odd numbers from 1 to 99, inclusive.
# All numbers should be printed on separate lines.
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - None
# > Output:
#   - List of strings
# > Requirements:
#   - Program must print all odd numbers from 1 through 99
#   - Program must not print even numbers
# > Rules:
#   - Program output must include 1 and 99 respectively
#   - Each number must print on a separate line
#
# Examples:
# 1
# 3
# 5
# 7
# ...
# Data Structures:
# The initial data structure being used will most likely be a range value. From the
# range value we will selectively print values as strings
# Algorithm:
# > Pseudo:
# START program
# SET range(1..99)
# ITERATE through range
#   IF value is odd
#     print to screen
# END iteration
# END program
#
# Code with Intent:

(1..99).each do |num|
  puts num if num.odd?
end

# Alternate strategy
1.upto(99) { |num| puts num if num % 2 != 0}

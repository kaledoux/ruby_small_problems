# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.
#
# Example Output
#
# Teddy is 69 years old!
#
# PEDAC:
# Understand the Problem:
# > Input: none
# > Output: string containing assigned integer
# > Requirements:
#   - The string 'Teddy is #{age} years old' is the output
# > Rules:
#   - The age generated has to be random
#   - The age generated must be between 20 and 200
#
# Examples:
# Teddy is 69 years old!
#
# Data Structures:
# The output will be a string, but the string will contain a hash literal to
# accommodate the randomly generated age, so it must be in double quotes
#
# Algorithm:
# START the program
# SET variable age = random number between 20 and 200
# PRINT "Teddy is #{age} years old!"
# END the program
#
# Code with Intent:

puts "Teddy is #{rand(20..200)} years old!"

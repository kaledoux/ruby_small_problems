# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.
#
# Note: 1 square meter == 10.7639 square feet
#
# Do not worry about validating the input at this time.
#
# Example Run
#
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - User input for Two separate integers
# > Output:
#   - String with Two floats nested
# > Requirements:
#   - The program needs to prompt user for and store two variables, length and width
#   - The program must convert user input to sq meters and sq feet
#   - The two measurements must be displayed as floats
#   - The floats have to be rounded to 2 decimal places
# > Rules:
#   - The program must take user input as integers
#   - The program must output two calculated results, square feet and square meters
#
# Examples:
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).
#
# Data Structures:
# The data coming in from the user will be a string, so it must be converted to
# a float prior to being used in any type of formula. The floats must then
# be used in a calculation that will yield further floats. The ending output
# will be a string with these floats interpolated.
#
# Algorithm:
# > Pseudo:
# START program
# PRINT 'Let's find out how big the room is!'
# PROMPT user 'Enter the length of the room in meters:'
# SET variable length = user input
# PROMPT user 'Enter the width of the room in meters:'
# SET variable width = user input
# SET variable square_meters = length * width
# ROUND square_meters to 2 decimal places
# SET variable square_feet = square_meters * 10.7639
# ROUND square_feet to 2 decimal places
# PRINT "The area of the room is #{square_meters} square meters and /
#        #{square_feet} square feet."
#
# Code with Intent:

puts 'Let\'s find out how big the room is.'
puts 'Enter the length of the room in meters:'
length_in_meters = gets.chomp.to_f
puts 'Enter the width of the room in meters:'
width_in_meters = gets.chomp.to_f

square_meters = (length_in_meters * width_in_meters).round(2)
square_feet = (square_meters * 10.7639).round(2)

puts "The room is #{square_meters} square meters and #{square_feet} square feet."

# Further Exploration:
# Modify this program to ask for the input measurements in feet, and display the
# results in square feet, square inches, and square centimeters.
SQUARE_FEET_TO_SQUARE_INCHES = 12
SQUARE_INCHES_TO_SQUARE_CENTIMETERS = 2.54

puts 'Let\'s find out how big the room is.'
puts 'Enter the length of the room in feet:'
length_in_feet = gets.chomp.to_f
puts 'Enter the width of the room in feet:'
width_in_feet = gets.chomp.to_f

square_feet = (length_in_feet * width_in_feet).round(2)
square_inches = (square_feet * SQUARE_FEET_TO_SQUARE_INCHES).round(2)
square_centimeters = (square_inches * SQUARE_INCHES_TO_SQUARE_CENTIMETERS).round(2)

puts "The room is #{square_feet} square feet, #{square_inches} square inches, /
and #{square_centimeters} square centimeters."

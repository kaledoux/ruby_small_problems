# Write a method that takes a string, and returns a new string in which every
# character is doubled.
#
# Examples:
#
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - string
# > Requirements:
#   - takes string argument
#   - returns new string with each character doubled ('a' #=> 'aa', ' ' 3=> '  ')
#
# > Rules:
#   - each character is doubled, including: spaces, symbols, etc
#   - arg string can be empty
#   - case matters 'H' must return 'HH' not 'hh'
#
# Examples:
# repeater('Hello')
# repeater("Good job!")
# repeater('')
#
# Data Structures:
# create a new string to hold values
# use the string argument and iterate through each char
# send each character * 2 to a new string
# return the new string
#
# Algorithm:
# > Pseudo:
# START
# DEFINE repeater(single_string)
#   SET double_string = ''
#   FOR each character in single_string
#     ADD character * 2 to double_string
#   END
#   RETURN double_string
# END
#
# Code with Intent:

def repeater(single_string)
  double_string = ''
  single_string.each_char do |char|
    double_string << char * 2
  end
  double_string
end

puts repeater('Hello')
puts repeater("Good job!")
puts repeater('')

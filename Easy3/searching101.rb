# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5 numbers.
#
# Examples:
#
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].
#
#
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - There will be six user inputs, all of which should be integers
# > Output:
#   - One string containing an integer (reference to users last input) and an array
#   constructed from all user inputs
# > Requirements:
#   - The program must solicit six inputs from the user
#   - The program needs to build an array from the inputs
#   - The program needs to check the array's values against the last user input
#   - The program must output a string
# > Rules:
#   - The inputs must be integers
#   - The program must have true and false conditions
#   - The program needs to distinguish user inputs
#
# Examples:
# ## See above
#
# Data Structures:
# The inputs will be entered as strings, which will need to be converted to integers
# and placed into an array. The last user input will need to be stored as a variable
# to be referenced in the check against the array.
# The final output is a string with the user input and array interpolated.
# Algorithm:
# > Pseudo:
# START program
# def valid_input?(string)
#   string.to_i.to_s == string
# end
#
# def prompt(message)
#   puts "==> #{message}"
# end
#
# SET array = []
# PROMPT 'Enter the 1st number:'
# number = gets.chomp
# CHECK valid_input
# IF valid
#   array << number
# ELSE
#   'Try again'
# END
# ...
# REPEAT FOR 5 more cycles
# ...
# ITERATE through array
#   IF array[1..5] includes number
#   PRINT true message
#   ELSE
#   PRINT false message
#   END
# END program
#
# Code with Intent:

def prompt(message)
  puts "==> #{message}"
end

def valid_input?(string)
  string.to_i.to_s == string
end

def num_set(number)
  case number
  when 0 then '1st'
  when 1 then '2nd'
  when 2 then '3rd'
  when 3 then '4th'
  when 4 then '5th'
  when 5 then 'last'
  end
end

def get_number(arr, iteration)
  number = ''
  until valid_input?(number)
    prompt("Enter the #{num_set(iteration)} number:")
    number = gets.chomp
    puts 'Invalid Input. Try again.' unless valid_input?(number)
  end
  arr << number.to_i
end

def last_number_repeat?(arr)
  arr[0..4].include?(arr[5])
end

array = []

6.times { |i| get_number(array, i)}


if last_number_repeat?(array)
  puts "The number #{array[5]} appears in #{array}."
else
  puts "The number #{array[5]} does not appear in #{array}."
end

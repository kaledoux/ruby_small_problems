# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power.
# Do not worry about validating the input.
#
# Example
#
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - Two integers from user
# > Output:
#   - Six strings containing calculated values (+ - 8 / % **)
# > Requirements:
#   - The program needs to accept two inputs from the user
#   - The program has to output six calculated values
#   - The calculations need to utilize the two user inputs
# > Rules:
#   - There must be six total output values
#   - Each input from the user must be an integer
#
# Examples:
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103
#
# Data Structures:
# The initial data structure will be two string objects from the user that need to
# be converted to integers. The integers will then be used to perform different
# calculations. The results of these calculations need to be interpolated in the
# last data structure, a string.
#
# Algorithm:
# > Pseudo:
# START program
# DEFINE prompt(message)
# DEFINE numbers_correct?(num1, num2)
# DEFINE find_difference(num1, num2)
# DEFINE find_product(num1, num2)
# DEFINE find_quotient(num1, num2)
# DEFINE find_remainder(num1, num2)
# DEFINE find_square(num1, num2)
#
# PROMPT 'Enter the first number:'
# SET number1 = gets.chomp
# PROMPT 'Enter the second number:'
# SET number2 = gets.chomp
#
# IF num1 < num 2
#   puts "sorry the first number needs to be greater than the second."
# ELSE
#   PRINT "#{num1} + #{num2} = #{find_sum(num1, num2)}"
#   ...
#   REPEAT for each operation
#   ...
# END
#
# Code with Intent:
def prompt(message)
  puts "==> #{message}."
end
def numbers_correct?(num1, num2)
  num1 >= num2
end
def find_sum(num1, num2)
  num1 + num2
end
def find_difference(num1, num2)
  num1 - num2
end
def find_product(num1, num2)
  num1 * num2
end
def find_quotient(num1, num2)
  num1 / num2
end
def find_remainder(num1, num2)
  num1 % num2
end
def find_square(num1, num2)
  num1 ** num2
end

prompt('Let\'s calculate. Please enter two numbers.
  The first must be >= than the second.')
prompt('Enter the first number:')
number1 = gets.chomp.to_i
prompt('Enter the second number')
number2 = gets.chomp.to_i
if numbers_correct?(number1, number2)
  prompt("#{number1} + #{number2} = #{find_sum(number1, number2)}")
  prompt("#{number1} - #{number2} = #{find_difference(number1, number2)}")
  prompt("#{number1} * #{number2} = #{find_product(number1, number2)}")
  prompt("#{number1} / #{number2} = #{find_quotient(number1, number2)}")
  prompt("#{number1} % #{number2} = #{find_remainder(number1, number2)}")
  prompt("#{number1} ** #{number2} = #{find_square(number1, number2)}")
else
  prompt('Error. The first number needs to be >= the second number')
end

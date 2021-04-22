# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.
#
# Examples:
#
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.
#
#
# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - One integer
#   - One string
# > Output:
#   - String containing calcualted integer
# > Requirements:
#   - The program needs to instruct user choices
#   - The program needs to take one integer and calculate a sum or product with it
#   - Program needs to take second user input in the form of a string to dictate
#     final calcuation type
#   - Output must include calculated value
# > Rules:
#   - Integer must be > 0
#   - String must be 'p' or 's'
#
# Examples:
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.
#
#
# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
#
# Data Structures:
# The inital input will be a string which needs to be converted to an integer for
# calculations. The second input is ready to use as a string. The variable containing
# the final calculation will be an integer, but the final output is a string with
# the final calculation interpolated
#
# Algorithm:
# > Pseudo:
# START program
# PRINT greeting for user
# PROMPT 'Please enter an integer greater than 0'
# SET user_number = gets.chomp.to_i
# PROMPT 'Enter \'s\' to compute the sum, \'p\' to compute the product.'
# SET choice = gets.chomp
# IF choice is 'p'
#   operation = 'product'
#   answer = 0
#   1.upto(user_number) { |num| answer *= num}
# ELSIF choice is 's'
#   operation = 'sum'
#   1.upto(user_number) { |num| answer += num}
# END
# PRINT 'The #{operation} of the integers between 1 and #{user_number} is #{answer}.'
# END program
#
# Code with Intent:
require 'pry'
def prompt(message)
  puts "##>> = #{message}"
end

# def find_product(number)
#   answer = 1
#   1.upto(number) { |num| answer *= num}
#   answer
# end

def find_product(number)
  (1..number).inject { |prod, num| prod * num}
end

# def find_sum(number)
#   answer = 0
#   1.upto(number) { |num| answer += num}
#   answer
# end

def find_sum(number)
  (1..number).inject { |sum, num| sum + num}
end

def valid_number?(number)
  number.to_i > 0
end

def valid_choice?(choice)
  (choice.downcase == 'p') || (choice.downcase == 's')
end

def find_operation(str)
  if str == 's'
    'sum'
  elsif str == 'p'
    'product'
  end
end

prompt("Let's take a number and calculate the product or sum from 1 to that number")
user_number = ''
loop do
  prompt('Enter an integer greate than 0:')
  user_number = gets.chomp
  if valid_number?(user_number)
    break user_number = user_number.to_i
  else
    puts 'Invalid choice, please try again.'
  end
end
user_choice = ''

loop do
  prompt("Enter 's' to find the sum, or 'p' to find the product.")
  user_choice = gets.chomp
  if valid_choice?(user_choice)
    break user_choice.downcase!
  else
    puts 'Invalid choice. Try again.'
  end
end

operation = find_operation(user_choice)

case user_choice
when 's'
  answer = find_sum(user_number)
when 'p'
  answer = find_product(user_number)
end

puts "The #{operation} of the integers between 1 and #{user_number} is #{answer}."

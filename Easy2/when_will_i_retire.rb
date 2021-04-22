# Build a program that displays when the user will retire and how many years
# she has to work till retirement.
#
# Example:
#
# What is your age? 30
# At what age would you like to retire? 70
#
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - Two integers from user input
# > Output:
#   - Three strings:
#     > String one contains integer for year
#     > String two contains integer for calculated year
#     > String three contains integer
# > Requirements:
#   - Program must take two user inputs
#   - Program needs to calculate the year a user will retire based on the current year
#     and the user's input
#   - Program must calculate the years left until retirement
#   - This information must be displayed for the user on the screen
# > Rules:
#   - Use inputs must be integers
#
# Examples:
# hat is your age? 30
# At what age would you like to retire? 70
#
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
#
# Data Structures:
# The inputs coming from the user need to be converted to integers so that the
# necessary calculations can be made. The calculated values must then be interpolated
# into the string outputs.
#
# Algorithm:
# > Pseudo:
# START program
# SET CURRENT_YEAR = current year
#
# DEFINE years_to_retirement(retire, current)
#   retire - current
# END method def
#
# PROMPT 'What is your age?'
# SET user_age = user input
# CONVERT user_age to integer
#
# PROMPT 'At what age would you like to retire?'
# SET age_to_retire = user input
# CONVERT age_to_retire to integer
#
# SET years_left = years_to_retirement(age_to_retire, user_age)
# SET retirement_year = CURRENT_YEAR + years_left
#
# PRINT "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}. /
# You have #{years_left} years of work to go!"
#
# Code with Intent:

CURRENT_YEAR = Time.now.year

def years_to_retirement(retire, current)
  retire - current
end

puts 'What\'s your age?'
user_age = gets.chomp.to_i

puts 'At what age would you like to retire?'
age_to_retire = gets.chomp.to_i

years_left = years_to_retirement(age_to_retire, user_age)
retirement_year = CURRENT_YEAR + years_left

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}.
You have #{years_left} years of work to go!"

# Write a method that returns the number of Friday the 13ths in the year given
# by an argument. You may assume that the year is greater than 1752
# (when the United Kingdom adopted the modern Gregorian Calendar) and that it will
# remain in use for the foreseeable future.
#
# Examples:
#
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - integer
# > Requirements:
#   - must take integer argument
#     > integer is the calendar year
#       - year > 1752
#   - calculates number of Fridays in the given year that fall on the 13th of a month
#
# > Rules:
#   - argument > 1752
#   - Gregorian Calendar will be in use for future dates
#
# Examples:
# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2
#
# Data Structures:
# use the integer to create a new date object
# create a counter variable for unlucky_days
# use a range object to create a monthly iteration
#   for each month, find the 13th day
#   if the 13th day is a friday, add 1 to the counter
# return the unlucky_days counter
#
# Algorithm:
# > Pseudo:
#
# Code with Intent:
require 'date'

def friday_13th(year)
  unlucky_days = 0
  for month in 1..12
    if Date.new(year, month, 13).friday?
      unlucky_days += 1
    end
  end
  unlucky_days
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# In the modern era under the Gregorian Calendar, leap years occur in every year
# that is evenly divisible by 4, unless the year is also divisible by 100.
# If the year is evenly divisible by 100, then it is not a leap year unless
# the year is evenly divisible by 400.
#
# Assume this rule is good for any year greater than year 0. Write a method that
# takes any year greater than 0 as input, and returns true if the year is a leap
# year, or false if it is not a leap year.
#
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - boolean
# > Requirements:
#   - determine if integer (year) is a leap year
#     - if year is evenly divisible by 4, but not evenly divisble by 100
#     - if year is evenly divisible by 4, , evenly divisible by 100, and evenly divisible by 400
#   - give boolean value determination
# > Rules:
#   - the integer given will be greater than 0
#   - true = leap year && false = not leap year
#
# Examples:
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true
#
# Data Structures:
# The initial data structure will be an integer. This integer can be used in
# calculations to determine if the argument passed is a lear year. A conditional
# that checks the value of the integer might serve to return a boolean value
#
# Algorithm:
# > Pseudo:
# DEFINE leap_year? with parameter (year)
#   IF year % 4 == 0 AND year % 100 != 0
#     leap year!
#   ELSIF year % 4 == 0 AND year % 100 == 0 AND year % 400 == 0
#     leap year!
#   ELSE
#     not leap year!
#   END
# END
#
# Code with Intent:

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    true
  elsif year % 4 == 0 && year % 100 == 0 && year % 400 == 0
    true
  else
    false
  end
end

#shorter version
def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
end

puts leap_year?(2016)
puts leap_year?(2015)
puts leap_year?(2100)
puts leap_year?(2400)
puts leap_year?(240000)
puts leap_year?(240001)
puts leap_year?(2000)
puts leap_year?(1900)
puts leap_year?(1752)
puts leap_year?(1700)
puts leap_year?(1)
puts leap_year?(100)
puts leap_year?(400)

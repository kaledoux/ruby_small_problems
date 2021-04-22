# A continuation of the previous exercise.
#
# The British Empire adopted the Gregorian Calendar in 1752, which was a
# leap year. Prior to 1752, the Julian Calendar was used. Under the Julian
# Calendar, leap years occur in any year that is evenly divisible by 4.
#
# Using this information, update the method from the previous exercise to
# determine leap years both before and after 1752.
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
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - boolean
# > Requirements:
#   - method must tell if the year provided (in the form of an integer) is a valid
#     leap year under two conditions, Gregorian, or Julian.
#   - must output a boolean value
# > Rules:
#   - Two conditions:
#     - Julian (year < 1752) year evenly divides by 4
#       leap year
#     - Gregorian (year >= 1752) year  divides evenly by 4, but not 100, or
#       divides evenly by 400
#       leap year
#   - integers provided will be greater than 0
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
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true
#
# Data Structures:
# the initial data structure will be an integer. This integer can be used to
# validate conditional statements that will determine the boolean output
#
# Algorithm:
# > Pseudo:
# DEFINE leap_year? with parameter (year)
# IF year < 1752
#   IF year % 4 == 0
#   leap year!
#   ELSE
#   not leap year
#   END
# ELSE
#   IF year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
#     leap year
#   ELSE
#     not leap year
#   END
# END
# END
#
# Code with Intent:

def leap_year?(year)
  if year < 1752
    year % 4 == 0 ? true : false
  else
    (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) ? true : false
  end
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

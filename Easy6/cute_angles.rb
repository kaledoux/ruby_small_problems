# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle
# in degrees, minutes and seconds. You should use a degree symbol (°) to represent
# degrees, a single quote (') to represent minutes, and a double quote (") to
# represent seconds. A degree has 60 minutes, while a minute has 60 seconds.
#
# Examples:
#
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# Note: your results may differ slightly depending on how you round values, but
# should be within a second or two of the results shown.
#
# You should use two digit numbers with leading zeros when formatting the minutes
# and seconds, e.g., 321°03'07".
#
# You may use this constant to represent the degree symbol:
#
# DEGREE = "\xC2\xB0"
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - float with or without decimal value
# > Output:
#   - string with 2 decimal places for each (degrees, minutes, seconds)
# > Requirements:
#   - must accept float input
#   - two digit numbers with leading 0s must be used for each section of the string
#   - input numbers will not be greater than 360 or less than 0
# > Rules:
#   - sections in return string must be formatted as follows:
#     %(93°02'05")
#   - values can be rounded however works, so long as the end result is within a
#     few seconds of the examples
#
# Examples:
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
#
# Data Structures:
# create a few constants for ease of calculation(MINUTES = 60.00, SECONDS = 60).
# use the original float to calculate the new values. Create a variable for each
# conversion (degrees, minutes, seconds).
# degrees == float to int
# minutes == all decimal values * 60 (MINUTES)
# seconds == all decimal values of minutes * 60 (SECONDS)
# Interpolate the calculated values into a final formatted string
#
# Algorithm:
# > Pseudo:
# DEFINE find_decimal(original_number)
#   original_number % original_number
# END
#
# DEFINE find_degrees(float)
#   float.round
# END
#
# DEFINE find_minutes(float)
#   (find_decimal(float) * MINUTES).round
# END
#
# DEFINE find_seconds(float)
#   (find_decimal(find_decimal(float) * MINUTES) * SECONDS).round
# END
#
# SET degrees = find_degrees(float)
# SET minutes = find_minutes(float)
# SET seconds = find_seconds(minutes)
#
# PRINT "%(#{degrees}°#{minutes}'#{seconds}")"
#
# Code with Intent:
# MINUTES = 60.00
# SECONDS = 60.00
#
# def find_decimal(original_number)
#   original_number - original_number.to_i
# end
#
# def find_degrees(float)
#   float.to_i
# end
#
# def find_minutes(float)
#   format("%02d", (find_decimal(float) * MINUTES).to_i)
# end
#
# def find_seconds(float)
#   format("%02d", (find_decimal(find_decimal(float) * MINUTES) * SECONDS).to_i)
# end
#
# def dms(float)
#   degrees = find_degrees(float)
#   minutes = find_minutes(float)
#   seconds = find_seconds(float)
#
#   puts "%(#{degrees}°#{minutes}'#{seconds}\")"
# end

#refactored based on optimized example
require 'pry'
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def get_degrees(float)
#   if float < -360
#     (float % -360) + 360
#   elsif float > 360
#     float % 360
#   else
#     float
#   end
# end

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  degrees %= 360
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end


puts dms(400)
puts dms(-40)
puts dms(-420)
puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)

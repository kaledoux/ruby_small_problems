# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.
#
# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.
#
# You may not use ruby's Date and Time classes.
#
# Examples:
#
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"
# Disregard Daylight Savings and Standard Time and other complications.
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer, positive or negative, or 0
# > Output:
#   - string with hh:mm formatting (03:00)
# > Requirements:
#   - the program must take an integer parameter
#   - the integer will be considered as formatted in seconds (300 = 5 hours)
#   - negative integers are considered minutes before midnight
#   - positive integers are considered minutes after midnight
#   - the method needs to convert minutes to hours and minutes
# > Rules:
#   - any integer is a valid input
#   - output must be a string with hh:mm formatting
#   - Date and Time classes cannot be used
#
# Examples:
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"
#
# Data Structures:
# we will be starting with integers as our first data structure.
# based on the sign of the integer we either add from 0 (+) or subtract from 1440 (-)
# we can convert these integers into two separate variables
# hours (integers / 60) and minutes (integer % 60).
# then interpolate the final values for these in a string
#
# Algorithm:
# > Pseudo:
# DEFINE time_of_day with paramter ( integer )
# SET time = 0
# IF integer is negative
#   SET time = subtract integer from 1440
# ELSIF integer is positive
#   SET time = add integer to 0
# END
# SET hours = time / 60
# SET minutes = time % 60
# DISPLAY '#{hours}:#{minutes}'
# END
#
# Code with Intent:

# def time_of_day(integer)
#   time = 0
#   if integer < 0
#     while integer < -1440
#       integer += 1440
#     end
#     time = 1440 + integer
#   else
#     while integer > 1440
#       integer -= 1440
#     end
#     time += integer
#   end
#   hours = time / 60
#   minutes = time % 60
#   puts "#{format("%02d", hours)}:#{format("%02d", minutes)}"
# end

#refactor
def reduce_integer(integer)
  if integer < 0
    while integer < -1440
      integer += 1440
    end
  else
    while integer > 1440
      integer -= 1440
    end
  end
  integer
end

def time_of_day(integer)
  time = 0
  if integer < 0
    time = 1440 + reduce_integer(integer)
  else
    time += reduce_integer(integer)
  end
  hours = format("%02d", (time / 60))
  minutes = format("%02d", (time % 60))
  puts "#{hours}:#{minutes}"
end


puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437)
puts time_of_day(3000)
puts time_of_day(800)
puts time_of_day(-4231)

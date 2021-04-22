# As seen in the previous exercise, the time of day can be represented as
# the number of minutes before or after midnight. If the number of minutes
# is positive, the time is after midnight. If the number of minutes is
# negative, the time is before midnight.
#
# Write two methods that each take a time of day in 24 hour format, and
# return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.
#
# You may not use ruby's Date and Time methods.
#
# Examples:
#
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string in hh:mm format (12:34)
# > Output:
#   - integer
# > Requirements:
#   - both methods need to change the string from hh:mm time format to an integer
#     that corresponds to the total number of minutes either before or after midnight
#     (eg: 12:34 ==> 754 after || 686 before)
#   - there must be two separate methods: one for before and one for after
# > Rules:
#   - inputs will be in the form of 'hh:mm'
#   - outputs must be integers in range 0..1439
#   - Date and Time methods cannot be used
#   - what happens with values larger than 24?
#
# Examples:
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0
#
# Data Structures:
# the arguments will be passed in as strings, so extracting the hour and minute
# values from this string will need to happen before anything. We can possibly split
# the value at the ':' and assign each to a variable, say hour and minute. These will
# need to be converted to integers.
# the hour variable will then be converted to minutes and the total of minutes will either
# add from 0 (+) or subtract from 1440 (-).
# The total should then be output (as an integer)
#
# Algorithm:
# > Pseudo:
# DEFINE after_midnight with parameter (string)
#   SPLIT string by ':'
#     SET hours = first value of split
#     SET minutes = second value of split
#   CONVERT hours and minutes to integers
#   total = (hours * 60) + minutes
#   RETURN total
# END
#
# DEFINE before_midnight with parameter (string)
#   SPLIT string by ':'
#     SET hours = first value of split
#     SET minutes = second value of split
#   CONVERT hours and minutes to integers
#   total = (hours * 60) + minutes
#   RETURN total
# END
#
# Code with Intent:

def after_midnight(string)
  hours, minutes = string.split(':').map {|num| num.to_i}
  time = (hours * 60) + minutes
  time == 1440 ? 0 : time
end

def before_midnight(string)
  hours, minutes = string.split(':').map {|num| num.to_i}
  time = 1440 - ((hours * 60) + minutes)
  time == 1440 ? 0 : time
end

puts after_midnight('00:00')
puts before_midnight('00:00')
puts after_midnight('12:34')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts before_midnight('24:00')

# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.
#
# New centuries begin in years that end with 01. So, the years 1901-2000
#   comprise the 20th century.
#
# Examples:
#
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - one integer
# > Output:
#   - one string
# > Requirements:
#   - the method takes an integer as an argument
#   - the integer is used to calculate a century
#   - the integer is used to find the correct suffix to append
#   - the method outputs a string
# > Rules:
#   - the input must be an integer, no floats etc.
#   - the suffix must match the determined century in syntax (eg: 1st, 22nd, 45th)
#   - the program must be able to account for years beyond four digits (eg: 34_907)
#
# Examples:
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'
#
# Data Structures:
# The argument will be passed in the form of an integer.
# We can use the integer to perform calculations that will help us determine the
# century (by perfmorming a reductive operation and storing in a variable)
# and the correct suffix (using a variable and corresponding case statement).
# The final structure for output will be a string with the variables interpolated
#
# Algorithm:
# > Pseudo:
# DEFINE century with parameter (integer)
# SET century
#   IF integer % 100 == 0
#     century = integer / 100
#   ELSE
#     century = (integer / 100) + 1
#   END
# CONVERT century to string
#
# SET case suffix
# when 0 then 'th'
# when 1 then 'st'
# when 2 then 'nd'
# when 3 then 'rd'
# when 4..9 then 'th'
# end
#
# suffix = century[-1]
# CONVERT to integer for use against case statement
#
# PRINT "#{century}#{suffix}"
#
# Code with Intent:

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10103)
puts century(1052)
puts century(1127)
puts century(11201)

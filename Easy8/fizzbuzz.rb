# Write a method that takes two arguments: the first is the starting number, and
# the second is the ending number. Print out all numbers between the two numbers,
# except if a number is divisible by 3, print "Fizz", if a number is divisible by
# 5, print "Buzz", and finally if a number is divisible by 3 and 5, print
# "FizzBuzz".
#
# Example:
#
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - two integers
# > Output:
#   - string
# > Requirements:
#   - must take two integers as arguments
#   - must generate a list of numbers with certain values swapped
#     > if num divisible by 3 then 'fizz'
#     > if num divisible by 5 then 'buzz'
#     > if num divisible by 3 and 5 then 'fizzbuzz'
#   - output must be a string
#
# > Rules:
#   - arguments must be greater than 0
#   - 2nd argument must be greater than 1st argument
#   - no limit to uppper arg size
#
# Examples:
# p fizzbuzz(1, 15)
# p fizzbuzz(0, 5)
# p fizzbuzz(15, 50)
#
# Data Structures:
# use the two integers passed as arguments to generate a range
# create an array to hold values
# from this range, iterate through the values, using filtering conditionals to
# shovel numbers into array as strings (to_s if not 'fizz', etc)
# combine array by joining with commas and spaces to output
#
# Algorithm:
# > Pseudo:
# START
# DEFINE fizz?(integer)
#   IS integer divisible by 3 | integer % 3 == 0
# END
#
# DEFINE buzz?(integer)
#   IS integer divisible by 5 | integer % 5 == 0
# END
#
# DEFINE fizzbuzz?(integer)
#   IS integer divisible by 3 and 5 | integer % 3 == 0 && integer % 5 == 0
# END
#
# DEFINE fizzbuzz(int1, int2)
#   SET return_array = []
#   FOR value in range from int1 to int2
#     IF fizzbuzz?(iterator)
#       return_array << 'fizzbuzz'
#     ELSIF fizz?(iterator)
#       return_array << 'fizz'
#     ELSIF buzz?(iterator)
#       return_array << 'buzz'
#     ELSE
#       return_array << iterator
#     END
#   END
#   PRINT return_array joined into string with commas and spaces between values
# END
#
# Code with Intent:

def fizz?(integer)
  integer % 3 == 0
end

def buzz?(integer)
  integer % 5 == 0
end

def fizzbuzz?(integer)
  integer % 3 ==0 && integer % 5 == 0
end

def fizzbuzz(int1, int2)
  return_array = []
  (int1..int2).each do |i|
    if fizzbuzz?(i)
      return_array << 'fizzbuzz'
    elsif fizz?(i)
      return_array << 'fizz'
    elsif buzz?(i)
      return_array << 'buzz'
    else
      return_array << i.to_s
    end
  end
  puts return_array.join(', ')
end

puts fizzbuzz(1, 15)
puts fizzbuzz(0, 5)
puts fizzbuzz(15, 50)

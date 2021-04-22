# In the previous exercise, we developed a procedural method for
# computing the value of the nth Fibonacci numbers. This method was
# really fast, computing the 20899 digit 100,001st Fibonacci sequence
# almost instantly.
#
# In this exercise, you are going to compute a method that returns the
# last digit of the nth Fibonacci number.
#
# Examples:
#
# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - integer
# > Requirements:
#   - the method must take an integer (n) and calculate the nth fibonacci number
#     > it must then find and return the last digit in the number
#   - takes very large arguments, so recursion might not be best
#
# > Rules:
#   - must return an integer, not a string
#   - calculates fibonacci number regardless of size
#
# Examples:
# p fibonacci_last(15)
# p fibonacci_last(20)
# p fibonacci_last(100)
# p fibonacci_last(100_001)
# p fibonacci_last(1_000_007)
# p fibonacci_last(123456789)
#
# Data Structures:
# use the same structure as the previous procedural method to calculate fib numbers
#   - create a variable for fib1 = 0, fib2 = 1, current_number = 1, counter = 1
#   iterate until counter == n
#     > set current_number = fib1 + fib2, fib2 = fib1 + fib2, fib1 = fib2
#     counter += 1
#   when loop exits, set current_number = an array of digits
#     return the last digit from the array
#
# Algorithm:
# > Pseudo:
# START program
# DEFINE fibonacci_last(n)
#   SET counter, current_number, fib1, fib2 = 1, 1, 0, 1
#   UNTIL counter = n
#     SET current_number = fib1 + fib 2
#     SET fib1, fib2 = fib2, fib1 + fib2
#     SET counter += 1
#   END
#   RETURN  last value of current_number converted to array of digits
# Code with Intent:

# tis could be refactored to use an existing fibonacci method
# but either way it takes a long time
# there are other ways to calculate just the last digit that are faster
def fibonacci_last(n)
  current_number, counter, fib1, fib2 = 1, 1, 0, 1
  until counter == n
    current_number = fib1 + fib2
    fib1, fib2 = fib2, fib1 + fib2
    counter += 1
  end
  current_number.digits.shift
end

p fibonacci_last(15)
p fibonacci_last(20)
p fibonacci_last(100)
p fibonacci_last(100_001)
p fibonacci_last(1_000_007)
p fibonacci_last(123456789)

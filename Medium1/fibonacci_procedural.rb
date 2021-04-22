# Rewrite your recursive fibonacci method so that it computes its
# results without recursion.
#
# Examples:
#
# fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) # => 4202692702.....8285979669707537501
#
# def fibonacci(n)
#   return n  unless n > 1
#   fibonacci(n -1) + fibonacci(n -2)
# end
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - integer
# > Requirements:
#   - takes one integer as an argument (n)
#   - needs to calculate the value of the nth fibonacci number
#     > done procedurally/without recursion
#   - upper limit to inputs?
#   - n must be >= 1
# > Rules:
#   - the method cannot make use of recursion to complete the calculation
#
# Examples:
# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501
#
# Data Structures:
# take integer as argument
# create variables for :
#   > counter = 1, fib1 = 0, fib2 = 1, current_number = 0
# create a loop that will iterate until the counter == n
# iterate through loop, each loop:
#   > current_number set to value of fib1 + fib 2
#     fib1, fib2 = (fib2), (fib1 + fib2)
#     counter += 1
# when the loop exits return current_number
#
# Algorithm:
# > Pseudo:
# START program
# DEFINE fibonacci(n)
#   SET counter = 0
#   SET current_number = 0
#   SET fib1 = 0
#   SET fib2 = 1
#   LOOP UNTIL counter == n
#     SET current_number = fib1 + fib2
#     SET fib1, fib2 = fib2, fib1 + fib2
#     INCREMENT sounter + 1
#   END
#   RETURN current_number
# END
# END program
#
# Code with Intent:

# def fibonacci(n)
#   counter = 1
#   current_number = 1
#   fib1, fib2 = 0, 1
#   until counter == n
#     current_number = fib1 + fib2
#     fib1, fib2 = fib2, fib1 + fib2
#     counter += 1
#   end
#   current_number
# end

# rafactored w/ more parrallel assignment
def fibonacci(n)
  counter, current_number, fib1, fib2 = 1, 1, 0, 1
  until counter == n
    current_number = fib1 + fib2
    fib1, fib2 = fib2, fib1 + fib2
    counter += 1
  end
  current_number
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001)
p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)

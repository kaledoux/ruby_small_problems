# Write a recursive method that computes the nth Fibonacci number,
# where nth is an argument to the method.
#
# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - integer
# > Output:
#   - integer
# > Requirements:
#   - must take one argument (n) and use it calculate the nth Fibonacci number
#     > Fib Number = F(n) = F(n -1) + F(n -2) where n > 2
#       - method must call itself at least once
#       - must have a stopping condition
#       - uses the result it returns
#
# > Rules:
#   - must return an integer
#   - 0 < n < no limit
#   - doesn't take floats
#
# Examples:
# p fibonacci(1)
# p fibonacci(2)
# p fibonacci(3)
# p fibonacci(4)
# p fibonacci(5)
# p fibonacci(12)
# p fibonacci(20)

# Data Structures:
# in the method start with a break clause to cover the cases where n !> 2
#   if num <= 2 return num
# otherwise, add the two values of fib(n -1) and fib(n - 2)
# these calls will recursively call the method itself, down until the break
# conditions are met
#
# Algorithm:
# > Pseudo:
# DEFINE fib(n)
#   IF n < 2
#     RETURN n
#   ELSE
#     RETURN fib(n -1) + fib(n -2)
#   END
# END
#
# Code with Intent:
# def fibonacci(n)
#   if n < 2
#     n
#   else
#     fibonacci(n -1) + fibonacci(n -2)
#   end
# end

# refactored to cut length with guard clause
def fibonacci(n)
  return n  unless n > 1
  fibonacci(n -1) + fibonacci(n -2)
end


p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)
p fibonacci(12)
p fibonacci(20)
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

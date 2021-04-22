# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument (the square is the result of multiplying a number by itself).
#
# Example:
#
# square(5) == 25
# square(-8) == 64


def square(num)
  multiply(num, num)
end

# To create a problem that raises the argument to higher powers, call the multiply
# method recursively

def square(num)
  multiply(multiply(num, num), num)
end

def square(num)
  num ** 2
end

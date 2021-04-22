# The following code:

def my_method(array)
  if array.empty?
    []
  elsif
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# is expected to print:

[]
[21]
[9, 16]
[25, 36, 49]

# However, it does not.
# Obviously, there is a bug.
# Find and fix the bug, then explain why the buggy program printed the
# results it did.

# the program printed the results the way it did because the conditional branches
# were not properly assigned conditions to run
# the programmer wanted the program to square each element in the array if the
# array contained more than one value, multiply the element by 7 if there was only
# one element in the array, and return a blank array if there were no elements
# in the array.
# however, the elsif branch that was designed to catch cases where the array had
# more than one argument did not have a proper conditional statment assigned,
# so it would never evaluate to true and execute the code contained therein
# this is why the returns were the products of running only through the else
# branch
# by creating a proper conditional statement, the code executes as expected and
# returns as expected.

def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

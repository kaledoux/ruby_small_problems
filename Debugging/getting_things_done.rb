# We wrote a method for moving a given number of elements from one array to another.
# We decide to test it on our todo list, but invoking move on line 11 results in
# a SystemStackError. What does this error mean and why does it happen?

# def move(n, from_array, to_array)
#   to_array << from_array.shift
#   move(n - 1, from_array, to_array)
# end
#
# # Example
#
# todo = ['study', 'walk the dog', 'coffee with Tom']
# done = ['apply sunscreen', 'go to the beach']
#
# move(2, todo, done)
#
# p todo # should be: ['coffee with Tom']
# p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# The SystemStackError is the Ruby exception for a Stack Overflow.
# A Stack Overflow occurs when a process inside ruby requires more memory than
# has been allocated in the address space. Essentially, the program consumes enough
# memory that it exceeds the restricted bounds of allocated memory.
#
# There are three conditions for a recursive method to function properly as a
# recursive method. It must call itself at least once, it must use its own return
# value, and it must have a break condition.
#
# The move method does not have a condition to break out of the recursive method call.
# This is causing it to recurse infinitely and eat up more memory with each recursion.

# this version has a break clause that will prevent the stack overflow

def move(n, from_array, to_array)
  return if n <= 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

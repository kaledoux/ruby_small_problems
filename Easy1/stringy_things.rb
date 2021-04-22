# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.
#
# Examples:
#
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# The tests above should print true.

def stringy(int)
  stringy_string = ''
  int.times do |num|
    if num.even?
      stringy_string << '1'
    elsif num.odd?
      stringy_string << '0'
    end
  end
  stringy_string
end

# refactor the code
def stringy(int = 1)
  stringy_string = ''
  int.times { |num| num.even? ? stringy_string << '1' : stringy_string << '0'}
  stringy_string
end

#refactored to include an optional parameter, reverses order on 0 optional parameter
def stringy(int, order = 1)
  stringy_string = ''
  if order != 0
    int.times { |num| num.even? ? stringy_string << '1' : stringy_string << '0'}
    stringy_string
  else
    int.times { |num| num.even? ? stringy_string << '0' : stringy_string << '1'}
    stringy_string
  end
end

# this version is more similar to the given answer, using arrays to store values
# instead of strings, though the process remains essentially the same
def stringy(int)
  stringy_string = []
  int.times { |num| num.even? ? stringy_string << 1 : stringy_string << 0}
  stringy_string.join
end

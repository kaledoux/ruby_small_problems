# Write a method that takes a String as an argument, and returns a new String that
# contains the original value using a staggered capitalization scheme in which every
# other character is capitalized, and the remaining characters are lowercase.
# Characters that are not letters should not be changed, but count as characters when
# switching between upper and lowercase.
#
# Example:
#
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - string (new)
# > Requirements:
#   - must take a non-empty string and return a string with alternating capitalization of letters
#   - non-alpha chars are not modified, but do count in the conversion count
#
# > Rules:
#   - 0 index starts upcase, 1 downcase, 2 upcase, etc.
#
# Examples:
# staggered_case('I Love Launch School!')
# staggered_case('ALL_CAPS')
# staggered_case('ignore 77 the 444 numbers')
#
# Data Structures:
# create a new array to hold the modified values == string chars
# iterate through using index values
# if the index is 0 or odd, then the element should be upcased
# if it is even it should be downcased
# this will not return an error with blank(space) strings, symbols, or digits
# then join the array and return the resulting string
#
# Algorithm:
# > Pseudo:
# START
# DEFINE staggered_case(string)
#   SET letter_array = string.chars
#   ITERATE through letter_array by item and index
#     IF the index is 0 or odd
#       upcase the item
#     ELSE downcase the item
#     END
#   END
#   JOIN letter_array into a string
#   RETURN the string
# END
#
# Code with Intent:

def staggered_case(string)
  letter_array = string.chars
  letter_array.each_with_index do |item, index|
    index.even? || index == 0 ? letter_array[index] = item.upcase : letter_array[index] = item.downcase
  end.join
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 the 444 numbers')

# modified so that the desired first case pattern can be specified
def staggered_case(string, first_case = 'upcase')
  letter_array = string.chars
  if first_case == 'downcase'
    letter_array.each_with_index do |item, index|
      index.even? || index == 0 ? letter_array[index] = item.downcase : letter_array[index] = item.upcase
    end.join
  else
    letter_array.each_with_index do |item, index|
      index.even? || index == 0 ? letter_array[index] = item.upcase : letter_array[index] = item.downcase
    end.join
  end
end

puts staggered_case('I Love Launch School!', 'downcase')
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 the 444 numbers', 'upcase')

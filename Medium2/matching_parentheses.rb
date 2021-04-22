# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise.
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
#
# Examples:
#
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - boolean
# > Requirements:
#   - must take a non empty string argument
#     > string may or may not contain '(' or ')' or multiple instance of each
#   - analyzes whether each parentheses is paired correctly
#     > correct pairing must start with '(' and be followed by a ')'
#     > each '(' must be accounted for with a ')' and vice verca
#
# > Rules:
#   - must return a boolean value
#     > true if each parentheses pair is valid
#     > false otherwise
#
# Examples:
# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false
#
# Data Structures:
# start with the string
# set value for a counter variable
# iterate through each character
#   if the character is '('
#     add 1 to the counter
#   if the character is ')'
#     subtract 1 from the counter
#   break loop if counter value is less than 0
# test if the counter variable is == 0
# this will make sure the loop ended with each parentheses being paired
#
# Algorithm:
# > Pseudo:
# START
# DEFINE balanced?(string)
#   SET counter = 0
#   ITERATE through string (each_char)
#     IF char == '(' ADD 1 to counter
#     IF char == ')' SUBTRACT 1 from counter
#     BREAK LOOP if counter < 0
#   END
#   CHECK if counter == 0
# END
#
# Code with Intent:
# def balanced?(string)
#   counter = 0
#   string.each_char do |char|
#     counter += 1 if char == '('
#     counter -= 1 if char == ')'
#     break if counter < 0
#   end
#   counter.zero?
# end

# refactored to include capability for other paired characters
def balanced?(string, first, second)
  counter = 0
  string.each_char do |char|
    counter += 1 if char == first
    counter -= 1 if char == second
    break if counter < 0
  end
  counter.zero?
end

p balanced?('Hey!', '(', ')') == true
p balanced?(')Hey!(', '(', ')') == false
p balanced?('What ((is))) up(', '(', ')') == false

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false

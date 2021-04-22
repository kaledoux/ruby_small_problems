# Write a method that takes a string argument and returns a new string
# that contains the value of the original string with all consecutive
# duplicate characters collapsed into a single character. You may not
# use String#squeeze or String#squeeze!.
#
# Examples:
#
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - string - new
# > Requirements:
#   - method must take a string and remove any consecutive duplicate characters
#   - the method needs to return a new string, not modify the exisiting string in place
#   - only consecutive repeat characters are removed (44 #=> 4 abcab #=> abcab)
#   -
# > Rules:
#   - squeeze method cannot be used
#   - output must be new string
#   - only strings with alpha characters are provided, no symbols
#   - string arguments can have spaces
#
# Examples:
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''
#
# Data Structures:
# the argument is being passed as a string. we can use the method each_char to
# iterate through the string. outside the scope of the each_char block, create a
# variable to store the current letter (current_character). check to see if the
# current character is equal to current_character, and delete if it is, move to next,
# otherwise, set the new leter to current_character. this will return a new string
# that has been modified based on the actions of the block, and should be returned
#
# Algorithm:
# > Pseudo:
# DEFINE crunch(double_string)
# SET current_character = ''
# ITERATE through each character of double_string |character|
#   IF character == current_character
#     SET current_character = character
#     DELETE character
#   ELSE
#     SET current_character = character
#   END
# END
#
#
# Code with Intent:

def crunch(double_string)
  current_character = ''
  new_string = ''
   double_string.each_char do |character|
                  if character != current_character
                  new_string += character
                  current_character = character
                  end
                end
  new_string
end

#vanilla version \/
def crunch(text)
  index = 0
  crunch_text = ''
  until index == text.length
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')

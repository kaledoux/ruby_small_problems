# Write a method that takes a string, and then returns a hash that contains 3 entries:
# one represents the number of characters in the string that are lowercase letters,
# one the number of characters that are uppercase letters,
# and one the number of characters that are neither.
#
# Examples
#
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - hash
# > Requirements:
#   - must take a string of any size (can be empty)
#   - returns a hash
#     > hash contains counts of each: lowercase letters, uppercase letters, and neither
#   - does not mutate the caller
# > Rules:
#   - has has the following keys: lowercase, uppercase, neither
#   - hash values are integers
#   - symbols spaces count as neither
#
# Examples:
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
#
# Data Structures:
# start by creating a hash with three keys: :lowercase, :uppercase, :neither with
# default values of 0
# iterate through each character in the string
# iterate the values of the matching keys by 1 for each matching value
# return the hash
#
# Algorithm:
# > Pseudo:
# START
# DEFINE letter_case_count(string)
#   SET count_hash = Hash.new with default values of 0
#   ITERATE through string
#     IF character..match(/[[:lower:]]/)
#       count_hash[:lowercase] += 1
#     ELSIF character.match(/[[:upper:]]/)
#       count_hash[:uppercase] += 1
#     ELSE
#       count_hash[:neither] += 1
#     END
#   END
#   RETURN count_hash
# END
#
# Code with Intent:

def letter_case_count(string)
  count_hash = {:lowercase => 0, :uppercase => 0, :neither => 0}
  string.each_char do |character|
    if character.match(/[[:lower:]]/)
      count_hash[:lowercase] += 1
    elsif character.match(/[[:upper:]]/)
      count_hash[:uppercase] += 1
    else
      count_hash[:neither] += 1
    end
  end
  count_hash
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')

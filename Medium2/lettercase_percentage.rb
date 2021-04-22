# In the easy exercises, we worked on a problem where we had to count the
# number of uppercase and lowercase characters, as well as characters that
# were neither of those two. Now we want to go one step further.
#
# Write a method that takes a string, and then returns a hash that contains
# 3 entries: one represents the percentage of characters in the string that
# are lowercase letters, one the percentage of characters that are uppercase
# letters, and one the percentage of characters that are neither.
#
# You may assume that the string will always contain at least one character.
#
# Examples
#
# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - hash
# > Requirements:
#   - takes non-empty string argument
#   - counts number of lowercase, uppercase, non letter characters
#     > calculates percentage of characters for each type
#
# > Rules:
#   - must return hash
#     > keys are lowercase, uppercase, neither
#     lowercase = all lowercase letters
#     uppercase = all uppercase letters
#     neither = all other characters
#   - must calculate percentage of each
#     > floats to accommodate uneven splits
#
# Examples:
# p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
#
# Data Structures:
# the argument will be passed in as a string
# create an array that will hold the totals of each char type
#   > [[0],[0],[0]] (lower, upper, neither)
# create variable to hold total size of string (total_chars = 0)
# create the hash that will hold the return values
#   > percentage_hash = Hash.new(0) (the default values will let us add w/o create)
# iterate over each char in the string and run each char through conditional branch
#   add 1 to total_chars unless character matches /[[:space]]/
#   if character matches /[[;lower]]/ add 1 to array[0]
#   if character matches /[[:upper]]/ add 1 to array[1]
#   if character matches /[[:graph]]/ add 1 to array[2]
#   end
# run totals in array against total_chars to calculate percent
#   > store this value in each relevent hash k/v pair
#   (extract to method?)
#   total.to_f / array[x].to_f
# return hash
#
# Algorithm:
# > Pseudo:
# START
# DEFINE find_percent_of_total(total_amount, portion)
#   RETURN total_amount.to_f / portion.to_f
# END
# DEFINE letter_percentages(string)
#   SET total_array = [[0],[0],[0]]
#   SET percentage_hash = Hash.new(0)
#   SET total_chars = 0
#   CONVERT string to array of characters
#   ITERATE through string array
#     EACH character
#       ADD 1 to total_chars unless /[[:space]]/.match?(character)
#       IF /[[:lower]]/.match?(character) ADD 1 to total_array[0]
#       IF /[[:upper]]/.match?(character) ADD 1 to total_array[2]
#       IF /[[:graph]]/.match?(character) ADD 1 to total_array[1]
#     END
#   END
#   SET percentage_hash[:lowercase] = find_percent_of_total(total_chars, total_array[0])
#   SET percentage_hash[:uppercase] = find_percent_of_total(total_chars, total_array[1])
#   SET percentage_hash[:neither] = find_percent_of_total(total_chars, total_array[2])
#   RETURN percentage_hash
# END
#
# Code with Intent:

def find_percent_of_total(total_amount, portion)
  (( portion.to_f/ total_amount.to_f) * 100).round(2)
end

def find_percentage_hash(string)
  percentage_hash = { lowercase: 0, uppercase: 0, neither: 0}
  string.chars.each do |char|
    if /[a-z]/.match?(char)
      percentage_hash[:lowercase] += 1
    elsif /[A-Z]/.match?(char)
      percentage_hash[:uppercase] += 1
    else
      percentage_hash[:neither] += 1
    end
  end
  percentage_hash
end

def letter_percentages(string)
  chars_total = string.size
  hash = find_percentage_hash(string)
  hash.transform_values { |num| find_percent_of_total(chars_total, num)}
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# p perc_hash = find_percentage_hash('abcABC123')
# p totals = find_total_chars('abcABC123')
# p letter_percentages(perc_hash, totals)
# p perc_hash = find_percentage_hash('123-;>.')
# p totals = find_total_chars('123-;>.')
# p letter_percentages(perc_hash, totals)
# p perc_hash = find_percentage_hash('12 Ba  CSA')
# p totals = find_total_chars('12 Ba  CSA')
# p letter_percentages(perc_hash, totals)
# p perc_hash = find_percentage_hash('><Mabx')
# p totals = find_total_chars('><Mabx')
# p letter_percentages(perc_hash, totals)

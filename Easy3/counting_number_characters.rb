# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters.
# Spaces should not be counted as a character.
#
# input:
# Please write word or multiple words:
# walk
# output:
# There are 4 characters in "walk".
#
# input:
# Please write word or multiple words:
# walk, don't run
# output:
# There are 13 characters in "walk, don't run".
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - The program will take one input in the form of a string
# > Output:
#   - The program will output one string containing an interpolated integer derived
#   from counting characters, and the original string itself
# > Requirements:
#   - There need to be final count of characters for the input string
#   - The original string needs to be contained in the output
# > Rules:
#   - The character count cannot include spaces
#   - The character count can include symbols
#
# Examples:
# input:
# Please write word or multiple words:
# walk
# output:
# There are 4 characters in "walk".
#
# input:
# Please write word or multiple words:
# walk, don't run
# output:
# There are 13 characters in "walk, don't run".
#
# Data Structures:
# The initial data structure is a string input.
# I think to count the string's characters without spaced, it would be best to
# split it into an array, using the spaces as the split points. Then rejoin it into
# a string to use for counting and output. The character count can be calculated
# and stored as a variable, or not. The final structure will be a string with the
# character count and string interpolated.
#
# Algorithm:
# > Pseudo:
# START program
# DEFINE prompt(message)
#   puts "==> #{message}"
# END
# DEFINE find_character_count(string)
#   SPLIt string into array at spaces
#   JOIN array back into a string
#   Count the length of the string
# END
# PROMPT("Enter a word or many words:")
# SET user_string = gets.chomp
# PROMPT("There are #{find_character_count} characters in #{user_string}")
#
# Code with Intent:
def prompt(message)
  puts "==> #{message}"
end
def find_character_count(string)
  string.split(' ').join.length
end
# this is an alternate way to accomplish the same task without converting to array
# def find_character_count(string)
#   string.delete(' ').length
# end
prompt("Enter a word or many words:")
user_string = gets.chomp

prompt("There are #{find_character_count(user_string)} characters in #{user_string}!")

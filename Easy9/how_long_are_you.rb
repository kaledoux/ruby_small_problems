# Write a method that takes a string as an argument, and returns an Array that
# contains every word from the string, to which you have appended a space and
# the word length.
#
# You may assume that words in the string are separated by exactly one space, and
# that any substring of non-space characters is a word.
#
# Examples
#
# word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
#
# word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
#
# word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
#
# word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]
#
# word_lengths("") == []
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - array
# > Requirements:
#   - must take a string with 1 or more substrings ( or empty returns empty )
#     > counts the length of each substring and tracks it
#     > do the substrings need to be unique (?)
#   - returns an array with each substring appended by a space and an integer
#     representing the number of letters in each
#
# > Rules:
#   - symbols count for the total length of each substring
#   - spaces separate each substring (delimiter == ' ')
#
# Examples:
# word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
#
# word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
#
# word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
#
# word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]
#
# word_lengths("") == []
#
# Data Structures:
# starting with the string, create a new array by splitting the string by spaces
# iterate through the array and modify it (map!) by appending a space and the
# size of each
# return this array
#
# Algorithm:
# > Pseudo:
# START program
# DEFINE word_lengths(starting_string)
#   SET word_array = starting_string split by spaces (' ')
#   MAP word_array |word|
#     SET word = "#{word} #{word.size}"
#   END
#   RETURN word_array
# END
#
# Code with Intent:

def word_lengths(starting_string)
  word = starting_string.split.map { |word| "#{word} #{word.size}"}
  word_array
end

# refactor - you don't need to create a variable to hold the array, it will return
# with the methods evaluated
def word_lengths(starting_string)
  starting_string.split.map {|word| "#{word} #{word.size}"}
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
p word_lengths("cow sheep chicken")
p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
p word_lengths("baseball hot dogs and apple pie")
p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
p word_lengths("It ain't easy, is it?")
p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]
p word_lengths("Supercalifragilisticexpialidocious")
p word_lengths("") == []

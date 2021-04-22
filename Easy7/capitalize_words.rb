# Write a method that takes a single String argument and returns a new string that
# contains the original value of the argument with the first character of every word
# capitalized and all other letters lowercase.
#
# You may assume that words are any sequence of non-blank characters.
#
# Examples
#
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - new string
# > Requirements:
#   - must take a non-empty, multiword string and titlecase each word
#   - must return a new string value, not mutate
#   - substrings are separated by spaces
#
# > Rules:
#   - substrings that start with symbols are not titlecased
#   - digits are not modified (obvi)
#
# Examples:
# word_cap('four score and seven')
# word_cap('the javaScript language')
# word_cap('this is a "quoted" word')
#
# Data Structures:
# the string passed as an argument cannot be mutated, so choose methods that will not do so
# separate the string into an array and iterate through each of the elements within
# if the element starts with a letter character, titlecase the substring
# join the array with spaces
# return the new string
#
# Algorithm:
# > Pseudo:
# START
# DEFINE word_cap(string)
#   SET array = string.split('')
#   ITERATE through array |word|
#     IF word[0].match(/[[:alpha:]]/)
#       word.capitalize
#     END
#   END
#   JOIN array(' ')
# END
#
# Code with Intent:

def word_cap(string)
  array = string.split(' ')
  array.map! do |word|
    word.start_with?(/[[:alpha:]]/) ? word.capitalize : word
    # if word.start_with?(/[[:alpha:]]/)
    #   word.capitalize
    # else
    #   word
    # end
  end
  array.join(' ')
end

#refaactored into a one liner/ readability suffers
# def word_cap(string)
#   string.split(' ').map {|word| word.start_with?(/[[:alpha:]]/) ? word.capitalize : word}.join(' ')
# end

#there is no exception raised on a string that begins with a digit or symbol being cased, so you
# can remove the conditional modification to clear up room and make it more readable
def word_cap(string)
    string.split.map(&:capitalize).join(' ')
end

puts word_cap('four score and seven')
puts word_cap('the javaScript language')
puts word_cap('this is a "quoted" word')

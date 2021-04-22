# Given a string of words separated by spaces, write a method that takes
# this string of words and returns a string in which the first and last
# letters of every word are swapped.
#
# You may assume that every word contains at least one letter, and that
# the string will always contain at least one word. You may also assume that
# each string contains nothing but words and spaces
#
# Examples:
#
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string with mutliple words and spaces
# > Output:
#   - string with multiple words and spaces
# > Requirements:
#   - the method must take a string and swap the first and last letters
#     of every substring
# > Rules:
#   - the arguments will all have at least one word
#   - there will not be symbols, just words and spaces
#   - each word will contain at least one letter
#   - the method must return a new string
#
# Examples:
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'
#
# Data Structures:
# the arguments will be passed in as strings. to manipulate each substring,
# they should be split by whitespace. this will return an array with each element
# an individual string (word). Iterating through each element in this array, we can
# then split these strings further into individual arrays. We can create an inner
# scope variable for first and last letters and use shift and pop to assign them.
# then we can use unshift and append to repopulate the values with the swapped letters.
# lastly, rejoin the split array and return the string.
#
# Algorithm:
# > Pseudo:
# DEFINE swap(string)
# SPLIT the string by whitespace
# ITERATE through the array of words
#   SPLIT each word into an array of letters
#     SET first = the first letter in the letters array (shift)
#     SET last = the last letter in the letters array (pop)
#     SET first letter to variable last
#     SET last letter to variable first
#   END
#   JOIN the array of altered words
#   RETURN the string
#
# Code with Intent:
require 'pry'

def swap_first_and_last(string)
  string = string.chars
  first = string.shift
  last = string.pop
  string.unshift(last)
  string.push(first)
  string.join
end

def swap(string)
  reversed = string.split.map do |word|
               if word.length > 1
                 swap_first_and_last(word)
               else
                 word
               end
            end
  reversed.join(' ')
end

### rewrite with mutliple assignment






# def swap(string)
#   reversed = string.split.map do |word|
#                if word.length > 1
#                    word = word.chars
#                    first = word.shift
#                    last = word.pop
#                    word.unshift(last)
#                    word.push(first)
#                    word.join
#                else
#                  word
#                end
#             end
#   reversed.join(' ')
# end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')

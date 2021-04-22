# Write a method that returns a list of all substrings of a string that are
# palindromic. That is, each substring must consist of the same sequence of
# characters forwards as it does backwards. The return value should be arranged
# in the same sequence as the substrings appear in the string. Duplicate
# palindromes should be included multiple times.
#
# You may (and should) use the substrings method you wrote in the previous exercise.
#
# For the purposes of this exercise, you should consider all characters and pay
# attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
# "Abc-bA" are. In addition, assume that single characters are not palindromes.
#
# Examples:
#
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - array
# > Requirements:
#   - must take a string and find each palindromic substring within
#   - must return array containing all palindromic substrings
#   - array can be empty if there are no PS
#   - string argument cannot be empty
#
# > Rules:
#   - symbols and spaces are considered part of the substrings and impact their
#     validity
#   - the array elements should appear in the same order as they do in the string
#
# Examples:
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]
#
# Data Structures:
# we can use the previous methods substrings_at_start and substrings with the string
# passed in as an argument.
# This will yield an array with every substring
# We can take this array and iterate though it, pulling each value that is a valid
# palindrome into a separate results array
# then return this array
#
# Algorithm:
# > Pseudo:
# DEFINE substrings_at_start
# DEFINE substrings
#
# DEFINE palindromes
#   SET raw_strings = substrings(string)
#   SET palindromic_strings = []
#   ITERATE through raw_strings.map |substring|
#     IF substring.reverse == substring
#       ADD substring to palindromic_strings
#     END
#   END
#   RETURN palindromic_strings
# END
#
# Code with Intent:

def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  substrings = []
  (0..string.size).each do |start_index|
    current_string = string[start_index..-1]
    substrings.concat(substrings_at_start(current_string))
  end
  substrings
end

def palindrome?(string)
  string.reverse == string && string.size > 1
end

def palindromes(string)
  raw_strings = substrings(string)
  palindromic_strings = []
  raw_strings.map do |substring|
    if palindrome?(substring)
      palindromic_strings << substring
    end
  end
  palindromic_strings
end

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')

# Write a method that takes a string with one or more space separated
# words and returns a hash that shows the number of words of different
# sizes.
#
# Words consist of any string of characters that do not include a space.
#
# Examples
#
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - hash
# > Requirements:
#   - method must take a string of any size
#   - return must be an array with {letter count of word ==> # of words of lenght}
#   - words include special characters/symbols
#   - words do not include spaces
# > Rules:
#   - output must be a hash
#
# Examples:
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}
#
# Data Structures:
# The initial date structure will be a string containing a variable amount of characters
# and words. the string will need to be split into separate words, most feasibly
# by splitting at whitespace between words. This will yield an array filled with
# each separate word. A hash will need to be initialized to hold the return values
# of the method. The array should be iterated, with each word being checked for
# length; the length will be used as a key for the hash, with the value incrementing
# by 1 for each words that matches the length (hash[length] += 1).
# Return the hash.
#
# Algorithm:
# > Pseudo:
# DEFINE word_sizes(string)
# SET words = string split into array by spaces
# SET word_size = {}
# Iterate through words
#   IF word_size has the key [word length]
#   SET word_size[length of word] += 1
#   ELSE word_size[length of word] = 1
#   END
# END iteration
# RETURN word_size
#
# Code with Intent:

def word_sizes(string)
  words = string.split(' ')
  word_size = {}
  words.map do |word|
    if word_size.has_key?(word.length)
      word_size[word.length] += 1
    else
      word_size[word.length] = 1
    end
  end
  word_size.sort_by {|length, count| length}.to_h
end

# refactor
def word_sizes(string)
  word_size = Hash.new(0)
  string.split.map do |word|
    word_size[word.length] += 1
  end
word_size.sort_by {|length, count| length}.to_h
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')

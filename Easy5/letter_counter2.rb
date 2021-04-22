# Modify the word_sizes method from the previous exercise to
# exclude non-letters when determining word size. For instance, the
# length of "it's" is 3, not 4.
#
# Examples
#
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - one string of variable size
# > Output:
#   - a hash
# > Requirements:
#   - the method must take a string argument and calculate the size of each word
#   not including non-numeric characters (eg: what's == 5 != 6)
#   - the method must build a hash that maintains a total count of words for each
#   word length
#   - output must be a hash
# > Rules:
#   - spaces and symbols do not count towards word length
#   - hash must be ordered on output
#
# Examples:
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}
#
# Data Structures:
# the initial data structure will be a string. from this string we will separate
# into an array of words, by splitting at the whitespaces in the string. a hash
# will need to be created with a default value of 0, to hold the results of the
# length evaluation. the array of words will be iterated through and each word will
# be evaluated for length using a custom method.
# The result of the evaluation will iterate the associated hash value for each
# occurence.
# the hash should be ordered and returned.
#
# Algorithm:
# > Pseudo:
# DEFINE true_length(string)
#   length_counter = 0
#   ITERATE through string.each_chr do |character|
#     IF /[W]/.match?(character)
#     SET length_counter += 1
#   END
#
# DEFINE word_sizes(long_string)
#   SET word_sizes = Hash.new(0)
#   SPLIT long_string.split(' ').
#   ITERATE each do |word|
#     SET true_word_size = true_length(word)
#     SET word_sizes[true_word_size] += 1
#   END iteration
#   RETURN word_sizes.sort_by {|key, value| key}.to_h
#
# Code with Intent:

def true_length(string)
  length_counter = 0
  string.each_char do |character|
    length_counter += 1 if /[[:alnum:]]/.match?(character)
  end
  length_counter
end
def word_sizes(long_string)
  word_sizes = Hash.new(0)
  long_string.split(' ').each do |word|
    true_word_size = true_length(word)
    word_sizes[true_word_size] += 1
  end
  word_sizes.sort_by {|key, value| key}.to_h
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')

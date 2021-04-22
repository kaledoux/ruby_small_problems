# A collection of spelling blocks has two letters per block, as shown in
# this list:
#
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
#
# This limits the words you can spell with the blocks to just those words that
# do not use both letters from any given block.
# Each block can only be used once.
#
# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.
#
# Examples:
#
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - boolean
# > Requirements:
#   - takes a string argument
#     > can be upcase, downcase or any mix
#     > one word length (?)
#   - returns a boolean
#     > true if word does not contain both letters in any block
#     > false if word contains both letters in a block
#
# > Rules:
#   - each block can only be used once (?) what does this mean?
#     > once a block has been marked in a word it is removed from coll?
#     > only one block can apply to an arg? *
#
# Examples:
# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true
#
# Data Structures:
# to start we need to create a collection to store the letter blocks
#   - array with nested arrays
#   - all entries downcased for use with logic later.
# letter_block_array = [['b', 'o'], ['x', 'k'], etc.]
# iterate through each element in letter_block_array
#   - does argument include pair[0] and pair[1]?
#     > true : return false
#     > false : nil
#   return true
#
# Algorithm:
# > Pseudo:
# START program
# SET LETTER_BLOCK_ARRAY = [['b', 'o'], ['x', 'k'], ['d', 'q'], ['c', 'p']] +
#                          [['n', 'a'], ['g', 't'], ['r', 'e'], ['f', 's']] +
#                          [['j', 'w'], ['h', 'u'], ['v', 'i'], ['l', 'y'] ] +
#                          [['z', 'm']]
# DEFINE block_word?(string)
#   EACH LETTER_BLOCK_ARRAY |block|
#   RETURN true unless
#   if string includes block[1] && block[2]
#   RETURN false
#   END
# END
#
# Code with Intent:
LETTER_BLOCK_ARRAY = [['b', 'o'], ['x', 'k'], ['d', 'q'], ['c', 'p']] +
                     [['n', 'a'], ['g', 't'], ['r', 'e'], ['f', 's']] +
                     [['j', 'w'], ['h', 'u'], ['v', 'i'], ['l', 'y']] +
                     [['z', 'm']]

def block_word?(word)
  string = word.downcase
  LETTER_BLOCK_ARRAY.each do |block|
    next unless string.include?(block[0]) && string.include?(block[1])
    return false
  end
  return true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('foXEs') == false
p block_word?('Huawei') == false
p block_word?('zootOPIA') == true

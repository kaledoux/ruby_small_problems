# # Let's build another program using madlibs. We made a program like this in the
# # easy exercises. This time, the requirements are a bit different.
# #
# # Make a madlibs program that reads in some text from a text file that you have
# # created, and then plugs in a selection of randomized nouns, verbs, adjectives,
# # and adverbs into that text and prints it. You can build your lists of nouns,
# # verbs, adjectives, and adverbs directly into your program, but the text data
# # should come from a file or other external source. Your program should read this
# # text, and for each line, it should place random words of the appropriate types
# # into the text, and print the result.
# #
# # The challenge of this program isn't about writing your program; it's about
# # choosing how to represent your data. Choose the right way to structure your
# # data, and this problem becomes a whole lot easier. This is why we don't show you
# # what the input data looks like; the input representation is your responsibility.
#
# Example output:
#
# The sleepy brown cat noisily
# licks the sleepy yellow
# dog, who lazily licks his
# tail and looks around.
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - file (text)
# > Output:
#   - string
# > Requirements:
#   - must read a text file that is provided
#     > text file should be formatted to allow for madlibs substitution
#   - program must substitute target words into provided text
#     > targets:
#       -adjectives, nouns, adverbs, verbs
#     substitutions should be randomized
# > Rules:
#   - text file should come from an external source
#   - results should be printed to the screen
#
# Examples:
#
# Data Structures:
# use a text file with the target terms identified with distinct markers **word**
# load this file into the program and read it
# create constant arrays that contain sample mad libs terms
# run gsub on the text string referencing the arrays
#
# Algorithm:
# > Pseudo:
# START
# SET ADJECTIVES = ['silly', 'sleepy', 'sneezy', 'slap-happy']
#     NOUNS = ['dwarf', 'troll', 'elf', 'hobbit']
#     ADVERBS = ['quickly', 'slowly', 'thoughfully', 'timidly']
#     VERBS = ['dances', 'wakes', 'howls', 'dreams']
# OPEN text file
# READ text file (convert to string)
# ITERATE through TXT file
#   EACH word
#     IF '**adjective**' substitute it with a random word from ADJECTIVES
#     ... for each target word type
#   END
# END
# PRINT string to screen
#
# Code with Intent:
ADJECTIVES = ['silly', 'sleepy', 'sneezy', 'slap-happy']
NOUNS = ['dwarf', 'troll', 'elf', 'hobbit']
ADVERBS = ['quickly', 'slowly', 'thoughfully', 'timidly']
VERBS = ['dances', 'wakes', 'howls', 'dreams']

def mad_swap!(string)
  string.count('**adj**').times {string.sub!('**adj**', ADJECTIVES.sample)}
  string.count('**noun**').times {string.sub!('**noun**', NOUNS.sample)}
  string.count('**adverb**').times {string.sub!('**adverb**', ADVERBS.sample)}
  string.count('**verb**').times {string.sub!('**verb**', VERBS.sample)}
  string
end

file = File.open('madlibs.txt')

pre_mad = file.read

post_mad = mad_swap!(pre_mad)

print(post_mad)

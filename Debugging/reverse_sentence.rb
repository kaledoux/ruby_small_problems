# The reverse_sentence method should return a new string with the words of its
# argument in reverse order, without using any of Ruby's built-in reverse methods.
# However, the code below raises an error. Change it so that it behaves as expected.
#
# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []
#
#   i = 0
#   while i < words.length
#     reversed_words = words[i] + reversed_words
#     i += 1
#   end
#
#   reversed_words.join(' ')
# end
#
# p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

# The method raises the following error: 'no implicit conversion of Array into String'\
# This exception is being raised because of the assignment on line (7). In this line
# the program is trying to set the Array (reversed_words) equal to the string contained
# in the indexed position of the Array (words) concatenated with the existing Array
# object (reversed_words).
# To fix this, changed the assignment to a push or shovel and only reference the
# desired indexed element in (words):

# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []
#
#   i = words.length
#   while i >= 0
#     reversed_words << words[i]
#     i -= 1
#   end
#
#   reversed_words.join(' ')
# end
#
# p reverse_sentence('how are you doing')

# can also be modified so that the indexed object is wrapped in an array so that
# the + operator will function as a concatenator with  like objects. This way
# no additional logic changes have to be made.

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')

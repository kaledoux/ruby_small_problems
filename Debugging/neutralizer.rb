# We wrote a neutralize method that removes negative words from sentences.
# However, it fails to remove all of them.
# What exactly happens?

# def neutralize(sentence)
#   words = sentence.split(' ')
#   words.each do |word|
#     words.delete(word) if negative?(word)
#   end
#
#   words.join(' ')
# end
#
# def negative?(word)
#   [ 'dull',
#     'boring',
#     'annoying',
#     'chaotic'
#   ].include?(word)
# end
#
# puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# This error is being caused by the modification of the collection words during
# iteration.
# As the program iterates through indexed values in words, is checks them against
# the list of target words in the method negative?, and deletes them from the
# array if they match.
# At the first iteration, index position [0], the word is 'These', which does not
# return true for negative?, so it is left in place.
# The next iteration, index position[1], the string is 'dull', which does return
# true for negative?, and thus, is deleted in place from the words array. However,
# when this is done, 'boring' now becomes the element referenced at words indexed
# position [1].
# The iteration of the collection moves on as normal, and as it has already iterated
# over words[1], it moves on to words[2], which instead of referencing 'boring', as
# it did previously, now references 'cards'. This allows 'boring' to slip through
# the cracks of our negative? check and remain in the words collection and the
# final return value.

#  useful version for inspection
def neutralize(sentence)
  words = sentence.split(' ')
  words.each_with_index do |word, index|
    p index
    p word
    p words
    words.delete(word) if negative?(word)
    p words
  end

  words.join(' ')
end

# refactored to return an array with each target word removed
def neutralize(sentence)
  words = sentence.split(' ')
  words.reject! { |word| neagtive?(word) }
  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')

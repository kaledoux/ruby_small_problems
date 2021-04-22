# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with all five or more letter words reversed.
# Each string will consist of only letters and spaces. Spaces should be included
# only when more than one word is present.
#
# Examples:
#
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

def reverse_words(string)
  reverse_arr = string.split.map do |word|
                word.length >= 5 ? word.reverse : word
                end
  reverse_string = reverse_arr.join(' ')
end

#this can be refactored to be more concise, but slightly less readable
def reverse_words(string)
  string.split.map { |word| word.length >= 5 ? word.reverse : word}.join(' ')
end

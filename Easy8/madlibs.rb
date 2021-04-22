#
# Madlibs
# Mad libs are a simple game where you create a story template with blanks for
# words. You, or another player, then construct a list of words and place them
# into the story, creating an often silly or funny story as a result.
#
# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and
# an adjective and injects those into a story that you create.
#
# Example
#
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly
#
# Do you walk your blue dog quickly? That's hilarious!
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string, 4
# > Output:
#   - string with inputs interpolated into output
# > Requirements:
#   - must take 4 user inputs:
#     noun, verb, adjective, adverb
#   - must have inputs for each:
#     > don't worry about filtering reuslts, just make sure it is not empty
# > Rules:
#   - user inputs must be injected into string
#
# Examples:
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly
#
# Do you walk your blue dog quickly? That's hilarious!
#
# Data Structures:
# the user inputs will need to be prompted for and then stored in separate variables
# this can be done with loose variables, but may be more neatly done with a hash
# once each value has been filled, interpolate the values into the result string
#
# Algorithm:
# > Pseudo:
# START program madlibs.rb
# DEFINE prompt(message)
#   PRINT "===> #{message}"
# SET mad_words = hash with four keys
#   :noun, :adjective, :adverb, :verb
# START LOOP
#   PROMPT "Enter a noun"
#   SET mad_words[:noun] = gets.chomp
#   IF mad_words[:noun] == ''
#     PRINT 'Sorry, you have to type something'
#   ELSE
#     BREAK LOOP
#   END
#   END LOOP
# REPEAT for each required key/value
# PRINT "The #{mad_words[:adjective]} #{mad_words[:noun] had to #{mad_words[:adverb]} #{mad_words[:verb]} }"
#
# Code with Intent:
def prompt(message)
  puts "====> #{message}"
end

def get_word(word_type)
  loop do
    prompt("Please enter a #{word_type}:")
    word = gets.chomp
    if word.empty?
      prompt("Sorry.You need to enter a #{word_type}!")
    else
      break word
    end
  end
end



mad_words = { noun: '', verb: '', adjective: '', adverb: ''}

prompt("Let's play MadLibs!")

mad_words[:noun] = get_word('noun')
mad_words[:verb] = get_word('verb')
mad_words[:adjective] = get_word('adjective')
mad_words[:adverb] = get_word('adverb')

puts "The #{mad_words[:adjective]} #{mad_words[:noun]} had to #{mad_words[:adverb]} #{mad_words[:verb]}!"

# We started working on a card game but got stuck.
# Check out why the code below raises a TypeError.
#
# Once you get the program to run and produce a sum, you might notice
# that the sum is off: It's lower than it should be.
# Why is that?

require 'pry'

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map! do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

puts sum

# The final call to the Array#sum method does not function as intended. This occurs
# because the call to map on the block argument remaining_cards returns the array
# with each element modified to reflect the score of the card, but the return value
# is not used by anything. The receiver for the final call to Array#sum is the
# array that remaining_cards was initially referencing.
# By making the Array#map method destructive, you can alter the array so that the
# elements are modofied to reflect card values permanently, and thus the call to
# Array#sum will result in a total.
# The larger issue here is the instantiation of the values for the hashes in deck
#
# When these are created, they are all referencing the same array object. So when
# the cards are being dealt out to the player, the shuffle and pop methods are acting
# on the Array object that is referenced in each one of the deck hash's values.
# By cloning the array when instantiating the deck, we can ensure that each one
# of the array objects set to the values of the hash are not modified as one object
# and retain their own distinct sets of elements

# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.
#
# Example:
#
# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - array
# > Output:
#   - array
# > Requirements:
#   - must take an array as an argument
#     > array cannot be empty
#     > each key must have an integer value
#   - must return an array with each fruit entered as an element a number of times
#     equal to the associated quantity
#   - each element must appear at least once in the return array
#
# > Rules:
#   -
# Examples:
# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]
#
# Data Structures:
# create an array to hold the resulting elements
# iterate through the arg array and enter each fruit into the array quantity times
# return this array
#
# Algorithm:
# > Pseudo:
# START program
# DEFINE buy_fruit(fruit_list)
#   SET fruit_array = []
#   FOR each pair in fruit_list |fruit, quantity|
#     ADD fruit to fruit_array quantity.times
#   END
#   RETURN fruit_array
# END
#
# Code with Intent:

def buy_fruit(fruit_list)
  fruit_array = []
  fruit_list.each do |fruit, quantity|
    quantity.times { fruit_array << fruit }
  end
  fruit_array
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

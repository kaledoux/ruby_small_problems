# Write a method that takes a first name, a space, and a last name passed as a
# single String argument, and returns a string that contains the last name,
# a comma, a space, and the first name.
#
# Examples
#
# swap_name('Joe Roberts') == 'Roberts, Joe'
#
# PEDAC:
# Understand the Problem:
# > Input:
#   - string
# > Output:
#   - string
# > Requirements:
#   - must take a string argument and rearrange the order of the substrings
#     > "given_name surname" ==> "surname, given_name"
#   - must return a new string, not mutate
#
# > Rules:
#   - argument must have two substrings
#
# Examples:
# swap_name('Joe Roberts') == 'Roberts, Joe'
# swap_name('Parmalee Tankmaster') == 'Tankmaster, Parmalee'

# Data Structures:
# use the first string and split into an array
# assign the values at array[0] and array[1] to given_name and surname respectively
# return string interpolation
#
# Algorithm:
# > Pseudo:
# START
# DEFINE swap_name(full_name)
#   SET names_array = full_name.split
#   SET given_name, surname = names_array[0], names_array[1]
#   RETURN "#{surname}, #{given_name}"
# END
#
# Code with Intent:

def swap_name(full_name)
  names_array = full_name.split
  given_name, surname = names_array[0], names_array[1]
  "#{surname}, #{given_name}"
end

# this is the provided answer, however, it does not scale as well as the above ;)
def swap_name(name)
  name.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
p swap_name('Parmalee Tankmaster') == 'Tankmaster, Parmalee'
